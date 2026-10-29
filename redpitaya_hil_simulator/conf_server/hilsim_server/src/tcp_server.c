/*******************************************************************************
*
*   tcp_server.c
*   ============
*
*   Simple TCP/IP server for interfacing with the HIL simulator.
*
*   Date        Rev.No. Author      Description
*   ----------------------------------------------------------------------------
*   22.07.2024  v1.0    jbd         Created.
*   06.01.2025  v1.0    jbd         Added requests for NLF switching.
*   ----------------------------------------------------------------------------
*
*   Author Glossary:
*    - jbd : Johannes Berndorfer, ACIN, Technische Universität Wien
*
*   Copyright (c) 2024 Johannes Berndorfer
*
*******************************************************************************/

#define _GNU_SOURCE

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <arpa/inet.h>

#include <cJSON.h>
#include <hilsim/tcp_server.h>
#include <hilsim/ipdriver.h>
#include <hilsim/daq.h>

#define ADDR_BUF_LEN        128

#define PACKET_HEADER_SZ    4
#define PACKET_MAX_SZ       512000

#define _DEBUG_PRINT_PACKET 0

struct tcp_connection
{
    int conn_fd;
    int notify_pipe[2];
    int notify_ack_pipe[2];
    pthread_t conn_thread;

    uint8_t header_buf[PACKET_HEADER_SZ];
    size_t header_recvd;
    uint8_t *packet_buf;
    size_t packet_buf_sz;
    size_t packet_recvd;

    char peer_addr[ADDR_BUF_LEN];
    unsigned short peer_port;
};

struct tcp_server
{
    char bind_addr[ADDR_BUF_LEN];
    unsigned short bind_port;

    int sock_fd;
    int notify_pipe[2];
    pthread_t server_thread;

    struct tcp_connection connections[TCP_SERVER_MAXCONNS];
};

struct tcp_server g_tcp_server = {0};
pthread_mutex_t g_tcp_connections_mtx;
pthread_mutex_t g_handle_packet_mtx;
pthread_mutex_t g_connection_killer_mtx;

static void *_tcp_server_thread(void *tparams);
static void *_tcp_connection_thread(void *tparams);

static void _handle_incoming_packet(const uint8_t *packet_buf, size_t packet_buf_size, struct tcp_connection *src_conn);
static void _handle_request_error(struct tcp_connection *src_conn, const char *err_str);
static void _handle_request_ping(struct tcp_connection *src_conn, const cJSON *j_req_payload);
static void _handle_request_update_config(struct tcp_connection *src_conn, const cJSON *j_req_payload);
static void _handle_request_get_sim_running(struct tcp_connection *src_conn, const cJSON *j_req_payload);
static void _handle_request_set_sim_running(struct tcp_connection *src_conn, const cJSON *j_req_payload);
static void _handle_request_do_sim_reset(struct tcp_connection *src_conn, const cJSON *j_req_payload);

static void _handle_request_reset_adc_calib(struct tcp_connection *src_conn, const cJSON *j_req_payload);
static void _handle_request_set_adc_calib(struct tcp_connection *src_conn, const cJSON *j_req_payload);
static void _handle_request_get_adc_calib(struct tcp_connection *src_conn, const cJSON *j_req_payload);
static void _handle_request_do_adc_zero_calib(struct tcp_connection *src_conn, const cJSON *j_req_payload);
static void _handle_request_read_adc(struct tcp_connection *src_conn, const cJSON *j_req_payload);

static void _handle_request_reset_dac_calib(struct tcp_connection *src_conn, const cJSON *j_req_payload);
static void _handle_request_set_dac_calib(struct tcp_connection *src_conn, const cJSON *j_req_payload);
static void _handle_request_get_dac_calib(struct tcp_connection *src_conn, const cJSON *j_req_payload);

static void _handle_request_set_nlfsw_iomask(struct tcp_connection *src_conn, const cJSON *j_req_payload);
static void _handle_request_get_nlfsw_iomask(struct tcp_connection *src_conn, const cJSON *j_req_payload);
static void _handle_request_set_nlfsw_sel(struct tcp_connection *src_conn, const cJSON *j_req_payload);
static void _handle_request_get_nlfsw_sel(struct tcp_connection *src_conn, const cJSON *j_req_payload);
static void _handle_request_get_nlfsw_current(struct tcp_connection *src_conn, const cJSON *j_req_payload);

static void _handle_request_configure_daq(struct tcp_connection *src_conn, const cJSON *j_req_payload);
static void _handle_request_prime_daq(struct tcp_connection *src_conn, const cJSON *j_req_payload);
static void _handle_request_check_finished_daq(struct tcp_connection *src_conn, const cJSON *j_req_payload);
static void _handle_request_send_daq_data(struct tcp_connection *src_conn, const cJSON *j_req_payload);

static void _send_packet(struct tcp_connection *src_conn, const uint8_t *payload, size_t payload_size);
static void _close_tcp_connection(int conn_idx);

void init_tcp_server()
{
    int rc;

    rc = pthread_mutex_init(&g_tcp_connections_mtx, NULL);
    if (0 != rc)
    {
        fprintf(stderr, "Failed to initialize TCP connections mutex. Got error %d.\n", rc);
        exit(1);
    }

    rc = pthread_mutex_init(&g_handle_packet_mtx, NULL);
    if (0 != rc)
    {
        fprintf(stderr, "Failed to initialize TCP packet-handling mutex. Got error %d.\n", rc);
        exit(1);
    }

    rc = pthread_mutex_init(&g_connection_killer_mtx, NULL);
    if (0 != rc)
    {
        fprintf(stderr, "Failed to initialize TCP connection killer mutex. Got error %d.\n", rc);
        exit(1);
    }
}

int start_tcp_server(const char *bind_addr, unsigned short bind_port)
{
    int rc;

    if (g_tcp_server.server_thread != 0)
        return 1; // Server already started.

    g_tcp_server.bind_port = bind_port;
    strncpy(g_tcp_server.bind_addr, bind_addr, ADDR_BUF_LEN-1);

    // Create a notify-pipe that can be used to stop the tcp server thread.
    rc = pipe(g_tcp_server.notify_pipe); // 0 = read, 1 = write.
    if (0 != rc)
    {
        fprintf(stderr, "Failed to create notify-pipe for TCP server thread. Got error: %d\n", rc);
        goto error;
    }

    // Create the TCP-socket for listening.
    struct sockaddr_in sa4;
    struct sockaddr_in6 sa6;
    const int reuseaddr_en = 1;

    // Clear the IPv4 and IPv6 sockaddr structs, set port and family.
    memset(&sa4, 0, sizeof(sa4));
    memset(&sa6, 0, sizeof(sa6));
    sa4.sin_family = AF_INET;
    sa4.sin_port = htons(bind_port);
    sa6.sin6_family = AF_INET6;
    sa6.sin6_port = htons(bind_port);

    if (1 == inet_pton(AF_INET, bind_addr, &(sa4.sin_addr)))
    {
        // Bind addr is IPv4, open and bind to IPv4 TCP socket.
        g_tcp_server.sock_fd = socket(AF_INET, SOCK_STREAM, 0);
        if (-1 == g_tcp_server.sock_fd)
        {
            fprintf(stderr, "Failed to create IPv4 socket for %s:%u\n", bind_addr, bind_port);
            rc = 1;
            goto error;
        }

        rc = setsockopt(g_tcp_server.sock_fd, SOL_SOCKET, SO_REUSEADDR, &reuseaddr_en, sizeof(reuseaddr_en));
        if (0 != rc)
        {
            fprintf(stderr, "Failed to set SO_REUSEADDR sockopt to IPv4 socket for %s:%u. Got error %d\n", bind_addr, bind_port, rc);
            goto error;
        }

        rc = bind(g_tcp_server.sock_fd, (struct sockaddr *) &sa4, sizeof(sa4));
        if (0 != rc)
        {
            fprintf(stderr, "Failed to bind IPv4 socket to %s:%u. Got error %d\n", bind_addr, bind_port, rc);
            goto error;
        }
    }
    else if (1 == inet_pton(AF_INET6, bind_addr, &(sa6.sin6_addr)))
    {
        // Bind addr is IPv6, open and bind to IPv6 TCP socket.
        g_tcp_server.sock_fd = socket(AF_INET6, SOCK_STREAM, 0);
        if (-1 == g_tcp_server.sock_fd)
        {
            fprintf(stderr, "Failed to create IPv6 socket for %s:%u\n", bind_addr, bind_port);
            rc = 1;
            goto error;
        }

        rc = setsockopt(g_tcp_server.sock_fd, SOL_SOCKET, SO_REUSEADDR, &reuseaddr_en, sizeof(reuseaddr_en));
        if (0 != rc)
        {
            fprintf(stderr, "Failed to set SO_REUSEADDR sockopt to IPv6 socket for %s:%u. Got error %d\n", bind_addr, bind_port, rc);
            goto error;
        }

        rc = bind(g_tcp_server.sock_fd, (struct sockaddr *) &sa6, sizeof(sa6));
        if (0 != rc)
        {
            fprintf(stderr, "Failed to bind IPv6 socket to %s:%u. Got error %d\n", bind_addr, bind_port, rc);
            goto error;
        }
    }
    else
    {
        // Invalid bind address.
        fprintf(stderr, "Invalid bind address was specified. Cannot bind server socket.\n");
        rc = 1;
        goto error;
    }

    // Start listening on socket.
    rc = listen(g_tcp_server.sock_fd, 5);
    if (0 != rc)
    {
        fprintf(stderr, "Failed to listen on socket for %s:%u. Got error %d.\n", bind_addr, bind_port, rc);
        goto error;
    }

    // Set O_NONBLOCK
    int flags = fcntl(g_tcp_server.sock_fd, F_GETFL, 0);
    if (-1 == flags)
    {
        fprintf(stderr, "Failed to retrieve FD flags for TCP server socket. Got error %d.\n", rc);
        goto error;
    }

    rc = fcntl(g_tcp_server.sock_fd, F_SETFL, flags | O_NONBLOCK);
    if (-1 == rc)
    {
        fprintf(stderr, "Failed to set O_NONBLOCK for server TCP socket. Got error %d.\n", rc);
        goto error;
    }

    printf("Server listening on %s:%u...\n", bind_addr, bind_port);

    rc = pthread_create(&g_tcp_server.server_thread, NULL, _tcp_server_thread, NULL);
    if (0 != rc)
    {
        fprintf(stderr, "Failed to create TCP server thread. Got error: %d\n", rc);
        goto error;
    }

    return 0;

error:
    if (g_tcp_server.notify_pipe[0] != 0 && g_tcp_server.notify_pipe[1] != 0)
    {
        close(g_tcp_server.notify_pipe[0]);
        close(g_tcp_server.notify_pipe[1]);
        g_tcp_server.notify_pipe[0] = 0;
        g_tcp_server.notify_pipe[1] = 0;
    }

    if (g_tcp_server.sock_fd != 0)
    {
        close(g_tcp_server.sock_fd);
        g_tcp_server.sock_fd = 0;
    }

    g_tcp_server.bind_port = 0;
    memset(g_tcp_server.bind_addr, 0, ADDR_BUF_LEN);

    return rc;
}

int stop_tcp_server()
{
    int rc;

    // Check if TCP server is running.
    if (g_tcp_server.server_thread == 0)
        return 1; // Server thread not running.

    // Write a 0xff to the pipe to tell the thread to go die.
    const uint8_t notification = 0xff;
    rc = write(g_tcp_server.notify_pipe[1], &notification, 1);
    if (1 != rc)
    {
        fprintf(stderr, "Failed to write to notify pipe for TCP server thread. Got error: %d\n", rc);
        return rc;
    }

    // Wait for the thread to die and join it.
    rc = pthread_join(g_tcp_server.server_thread, NULL);
    if (0 != rc)
    {
        fprintf(stderr, "Failed to join TCP server thread. Got error: %d\n", rc);
        return rc;
    }

    return 0;
}

static void *_tcp_server_thread(void *tparams)
{
    struct tcp_server *srv = &g_tcp_server;

    printf("TCP server thread started.\n");

    int rc;
    struct timeval tv;
    int max_fd;
    fd_set fds;

    while (1)
    {
        max_fd = srv->sock_fd > srv->notify_pipe[0] ? srv->sock_fd : srv->notify_pipe[0];

        FD_ZERO(&fds);
        FD_SET(srv->sock_fd, &fds);
        FD_SET(srv->notify_pipe[0], &fds);

        tv.tv_sec = 0;
        tv.tv_usec = 1000; // 1ms timeout.

        rc = select(max_fd + 1, &fds, NULL, NULL, &tv);

        if (-1 == rc && errno != EINTR)
        {
            fprintf(stderr, "Select failed with error code %d.\n", rc);
            break;
        }
        else if (rc <= 0)
        {
            // Timeout
            continue;
        }

        // Socket FD set -> new connection inbound.
        if (FD_ISSET(srv->sock_fd, &fds))
        {
            struct sockaddr peer;
            socklen_t peer_len = sizeof(peer);
            char peer_addr[ADDR_BUF_LEN];
            unsigned short peer_port;
            int conn_fd;
            int notify_pipe[2];
            int notify_ack_pipe[2];
            pthread_t conn_thread;

            conn_fd = accept(srv->sock_fd, &peer, &peer_len);
            if (-1 == conn_fd)
            {
                fprintf(stderr, "Failed to accept incoming connection: accept() returned error code %d.\n", rc);
                continue;
            }

            // Get the peer's network address.
            if (peer.sa_family == AF_INET) // IPv4 connection
            {
                inet_ntop(AF_INET, &((struct sockaddr_in *) &peer)->sin_addr, peer_addr, ADDR_BUF_LEN-1);
                peer_port = ntohs(((struct sockaddr_in *) &peer)->sin_port);
            }
            else if (peer.sa_family == AF_INET6)
            {
                inet_ntop(AF_INET6, &((struct sockaddr_in6 *) &peer)->sin6_addr, peer_addr, ADDR_BUF_LEN-1);
                peer_port = ntohs(((struct sockaddr_in6 *) &peer)->sin6_port);
            }
            else
            {
                fprintf(stderr, "Incoming connection from unknown address type. Aborting.\n");
                close(conn_fd);
                continue;
            }

            // Create notification pipe.
            rc = pipe(notify_pipe);
            if (0 != rc)
            {
                fprintf(stderr, "Failed to create notification pipe for TCP connection.\n");
                close(conn_fd);
                continue;
            }

            rc = pipe(notify_ack_pipe);
            if (0 != rc)
            {
                fprintf(stderr, "Failed to create notification acknowledge pipe for TCP connection.\n");
                close(conn_fd);
                close(notify_pipe[0]);
                close(notify_pipe[1]);
                continue;
            }

            pthread_mutex_lock(&g_tcp_connections_mtx);

            // Search for the first free connection slot.
            int conn_id = -1;
            for (int i = 0; i < TCP_SERVER_MAXCONNS; ++i)
            {
                if (0 == srv->connections[i].conn_fd)
                {
                    conn_id = i;
                    break;
                }
            }

            if (conn_id < 0)
            {
                pthread_mutex_unlock(&g_tcp_connections_mtx);
                fprintf(stderr, "Cannot accept incoming connection from %s:%u. Reached the maximum number of connections.\n", peer_addr, peer_port);
                close(conn_fd);
                close(notify_pipe[0]);
                close(notify_pipe[1]);
                close(notify_ack_pipe[0]);
                close(notify_ack_pipe[1]);
                continue;
            }

            rc = pthread_create(&conn_thread, NULL, _tcp_connection_thread, (void *) conn_id);
            if (0 != rc)
            {
                pthread_mutex_unlock(&g_tcp_connections_mtx);
                fprintf(stderr, "Failed to create TCP connection thread for connection from %s:%u. Got error %d.\n", peer_addr, peer_port, rc);
                close(conn_fd);
                close(notify_pipe[0]);
                close(notify_pipe[1]);
                close(notify_ack_pipe[0]);
                close(notify_ack_pipe[1]);
                continue;
            }

            // Detach all connection threads. Thus, they are "self-managing", i.e.
            // not required to be joined by the main thread again. Thus, a
            // connection that was closed by the remote can also close itself.
            (void) pthread_detach(conn_thread);

            // Set connection struct.
            struct tcp_connection *conn = &srv->connections[conn_id];
            conn->conn_thread = conn_thread;
            conn->conn_fd = conn_fd;
            conn->peer_port = peer_port;
            conn->notify_pipe[0] = notify_pipe[0];
            conn->notify_pipe[1] = notify_pipe[1];
            conn->notify_ack_pipe[0] = notify_ack_pipe[0];
            conn->notify_ack_pipe[1] = notify_ack_pipe[1];
            strncpy(conn->peer_addr, peer_addr, ADDR_BUF_LEN);

            pthread_mutex_unlock(&g_tcp_connections_mtx);
        }

        // Notification FD set -> we got a notification from the main thread.
        if (FD_ISSET(srv->notify_pipe[0], &fds))
        {
            uint8_t notification;

            rc = read(srv->notify_pipe[0], &notification, 1);
            if (1 != rc)
            {
                fprintf(stderr, "Failed to read() from TCP server thread notification pipe. Got error %d.\n", rc);
                continue;
            }

            // Check notification value.
            if (0xff == notification)
            {
                break;
            }
            else
            {
                fprintf(stderr, "Invalid notification code received: 0x%02x\n", notification);
                continue;
            }
        }

    }

    // Close all open connections.
    for (int i = 0; i < TCP_SERVER_MAXCONNS; ++i)
    {
        if (srv->connections[i].conn_fd != 0)
            _close_tcp_connection(i);
    }

    printf("TCP server thread stopping.\n");
    return NULL;
}

static void *_tcp_connection_thread(void *tparams)
{
    int conn_id = (int) tparams;
    struct tcp_connection *conn = &g_tcp_server.connections[conn_id];

    printf("[+] TCP connection id=%d from %s:%u\n", conn_id, conn->peer_addr, conn->peer_port);

    int rc;
    struct timeval tv;
    int max_fd;
    fd_set fds;

    int got_killed = 0;

    while (1)
    {
        max_fd = conn->conn_fd > conn->notify_pipe[0] ? conn->conn_fd : conn->notify_pipe[0];

        FD_ZERO(&fds);
        FD_SET(conn->conn_fd, &fds);
        FD_SET(conn->notify_pipe[0], &fds);

        tv.tv_sec = 0;
        tv.tv_usec = 1000; // 1ms timeout.

        rc = select(max_fd + 1, &fds, NULL, NULL, &tv);

        if (-1 == rc && errno != EINTR)
        {
            fprintf(stderr, "Select failed with error code %d.\n", rc);
            break;
        }
        else if (rc <= 0)
        {
            // Timeout
            continue;
        }

        if (FD_ISSET(conn->conn_fd, &fds))
        {
            // Got data from the TCP connection.
            if (conn->header_recvd < PACKET_HEADER_SZ)
            {
                rc = recv(conn->conn_fd, &conn->header_buf, PACKET_HEADER_SZ - conn->header_recvd, 0);
                if (rc <= 0)
                    break; // Close connection.
                
                conn->header_recvd = conn->header_recvd + rc;

                // Finished receiving header.
                if (conn->header_recvd == PACKET_HEADER_SZ)
                {
                    uint32_t packet_sz = ntohl(*(uint32_t *)conn->header_buf);
                    
                    if (packet_sz > PACKET_MAX_SZ)
                    {
                        fprintf(stderr, "Packet size of %d exceeds max. packet size of %d.\n", packet_sz, PACKET_MAX_SZ);
                        break; // Max packet size exceeded, close connection.
                    }
                    
                    conn->packet_buf_sz = packet_sz;
                    conn->packet_recvd = 0;
                    conn->packet_buf = (uint8_t *) malloc(conn->packet_buf_sz);
                    if (!conn->packet_buf)
                    {
                        fprintf(stderr, "Failed to allocate packet buffer for packet of size %d.\n", conn->packet_buf_sz);
                        break;
                    }
                }
            }
            else
            {
                // Write to packet buffer.
                rc = recv(conn->conn_fd, conn->packet_buf + conn->packet_recvd, conn->packet_buf_sz - conn->packet_recvd, 0);
                if (rc <= 0)
                    break; // Close connection.
                
                conn->packet_recvd = conn->packet_recvd + rc;

                // Check if the packet is complete.
                if (conn->packet_recvd == conn->packet_buf_sz)
                {
                    // Handle packet & free up all resources of this packet afterwards.
                    _handle_incoming_packet(conn->packet_buf, conn->packet_buf_sz, conn);

                    free(conn->packet_buf);
                    conn->packet_buf = NULL;
                    conn->packet_buf_sz = 0;
                    conn->packet_recvd = 0;
                    conn->header_recvd = 0;
                }
            }
        }

        if (FD_ISSET(conn->notify_pipe[0], &fds))
        {
            uint8_t notification;

            rc = read(conn->notify_pipe[0], &notification, 1);
            if (1 != rc)
            {
                fprintf(stderr, "Failed to read() from TCP connection thread notification pipe. Got error %d.\n", rc);
                continue;
            }

            // Check notification value.
            if (0xff == notification)
            {
                pthread_mutex_lock(&g_connection_killer_mtx);
                got_killed = 1;

                // Send notification ACK to inidicate we're about to die here.
                notification = 0xaa;
                (void) write(conn->notify_ack_pipe[1], &notification, 1);
                break;
            }
            else
            {
                fprintf(stderr, "Invalid notification code received: 0x%02x\n", notification);
                continue;
            }
        }
    }

    // TODO: Close TCP connection here.
    pthread_mutex_lock(&g_tcp_connections_mtx);

    close(conn->conn_fd);
    close(conn->notify_pipe[0]);
    close(conn->notify_pipe[1]);
    close(conn->notify_ack_pipe[0]);
    close(conn->notify_ack_pipe[1]);
    if (conn->packet_buf) free(conn->packet_buf);

    printf("[-] TCP connection id=%d to %s:%u closed.\n", conn_id, conn->peer_addr, conn->peer_port);

    // Clear connection data struct slot, so that a new slot may be created.
    memset(conn, 0, sizeof(*conn));

    pthread_mutex_unlock(&g_tcp_connections_mtx);

    if (got_killed)
        pthread_mutex_unlock(&g_connection_killer_mtx);

    return NULL;
}

static void _close_tcp_connection(int conn_idx)
{
    int rc;
    struct tcp_connection *conn = &g_tcp_server.connections[conn_idx];

    // We need to make sure that, during the notification and whilst waiting on
    // the notification ACK that the pipe's we're using are not destroyed and
    // the connection slot pointed to by `conn` actually still contains valid
    // data. Thus we lock the `g_tcp_connections_mtx`, which will ensure that
    // any deletion done by the dying connection thread is done after we've
    // received the notification.
    pthread_mutex_lock(&g_tcp_connections_mtx);

    // Notify the thread to kill itself.
    uint8_t notification = 0xff;
    rc = write(conn->notify_pipe[1], &notification, 1);
    if (1 != rc)
    {
        fprintf(stderr, "Failed to close TCP connection: write to notification pipe failed with error code %d.\n", rc);
        goto error;
    }

    rc = read(conn->notify_ack_pipe[0], &notification, 1);
    if (1 != rc)
    {
        fprintf(stderr, "Failed to close TCP connection: read from notification ack pipe failed with error code %d.\n", rc);
        goto error;
    }

    if (0xaa != notification)
    {
        fprintf(stderr, "TCP connection thread responded with invalid ACK for kill notification: 0x%02x\n", notification);
        goto error;
    }

    pthread_mutex_unlock(&g_tcp_connections_mtx);

    // Wait for kill sync.
    pthread_mutex_lock(&g_connection_killer_mtx);
    pthread_mutex_unlock(&g_connection_killer_mtx);

    return;

error:
    pthread_mutex_unlock(&g_tcp_connections_mtx);
    return;
}

static void _handle_incoming_packet(const uint8_t *packet_buf, size_t packet_buf_size, struct tcp_connection *src_conn)
{
    pthread_mutex_lock(&g_handle_packet_mtx);

    printf("[*] Inbound request from %s:%u, size %d.\n", src_conn->peer_addr, src_conn->peer_port, packet_buf_size);

#if _DEBUG_PRINT_PACKET
    char *pkt_str = calloc(1, packet_buf_size + 1);
    memcpy(pkt_str, packet_buf, packet_buf_size);    
    printf("Packet: %s\n", pkt_str);
    free(pkt_str);
#endif
    
    cJSON *j_root = cJSON_ParseWithLength((const char *) packet_buf, packet_buf_size);
    if (!j_root)
    {
        const char *err_ptr = cJSON_GetErrorPtr();
        if (err_ptr)
            fprintf(stderr, "JSON parsing error: %s", err_ptr);
        else
            fprintf(stderr, "Unknown JSON parsing error.");

        _handle_request_error(src_conn, "Invalid JSON payload");
        
        goto cleanup;
    }

    const cJSON *j_request = cJSON_GetObjectItemCaseSensitive(j_root, "request");
    const cJSON *j_payload = cJSON_GetObjectItemCaseSensitive(j_root, "payload");

    if (!j_request || !j_payload || !cJSON_IsString(j_request))
    {
        fprintf(stderr, "Got invalid request from %s:%u. JSON format is bad.\n", src_conn->peer_addr, src_conn->peer_port);
        _handle_request_error(src_conn, "Bad JSON format");
        goto cleanup;
    }

    struct {
        const char *req_string;
        void (*req_handler_func)(struct tcp_connection *src_conn, const cJSON *j_payload);
    } const FUNCTBL_REQ[] = {
        {"ping", _handle_request_ping},
        {"update_config", _handle_request_update_config},
        {"get_sim_running", _handle_request_get_sim_running},
        {"set_sim_running", _handle_request_set_sim_running},
        {"do_sim_reset", _handle_request_do_sim_reset},
        {"reset_adc_calib", _handle_request_reset_adc_calib},
        {"set_adc_calib", _handle_request_set_adc_calib},
        {"get_adc_calib", _handle_request_get_adc_calib},
        {"do_adc_zero_calib", _handle_request_do_adc_zero_calib},
        {"read_adc", _handle_request_read_adc},
        {"reset_dac_calib", _handle_request_reset_dac_calib},
        {"set_dac_calib", _handle_request_set_dac_calib},
        {"get_dac_calib", _handle_request_get_dac_calib},
        {"set_nlfsw_iomask", _handle_request_set_nlfsw_iomask},
        {"get_nlfsw_iomask", _handle_request_get_nlfsw_iomask},
        {"set_nlfsw_sel", _handle_request_set_nlfsw_sel},
        {"get_nlfsw_sel", _handle_request_get_nlfsw_sel},
        {"get_nlfsw_current", _handle_request_get_nlfsw_current},
        {"configure_daq", _handle_request_configure_daq},
        {"prime_daq", _handle_request_prime_daq},
        {"check_finished_daq", _handle_request_check_finished_daq},
        {"send_daq_data", _handle_request_send_daq_data}
    };

    int valid_req_string = 0;
    for (int i = 0; i < sizeof(FUNCTBL_REQ)/sizeof(FUNCTBL_REQ[0]); ++i)
    {
        if (strcmp(j_request->valuestring, FUNCTBL_REQ[i].req_string) == 0)
        {
            FUNCTBL_REQ[i].req_handler_func(src_conn, j_payload);
            valid_req_string = 1;
            break;
        }
    }

    if (!valid_req_string)
    {
        fprintf(stderr, "Got invalid request from %s:%u: \"%s\"", src_conn->peer_addr, src_conn->peer_port, j_request->valuestring);
    }

cleanup:
    if (j_root) cJSON_Delete(j_root);
    pthread_mutex_unlock(&g_handle_packet_mtx);
    return;
}

static void _handle_request_error(struct tcp_connection *src_conn, const char *err_str)
{
    cJSON *j_root = cJSON_CreateObject();
    cJSON *j_payload = cJSON_CreateObject();

    cJSON_AddItemToObject(j_payload, "err_str", cJSON_CreateString(err_str));
    
    cJSON_AddItemToObject(j_root, "response", cJSON_CreateString("error"));
    cJSON_AddItemToObject(j_root, "payload", j_payload);

    char *out_str = cJSON_Print(j_root);
    _send_packet(src_conn, (uint8_t *) out_str, strlen(out_str));
    free(out_str);
    cJSON_Delete(j_root);
}

static void _handle_request_ping(struct tcp_connection *src_conn, const cJSON *j_req_payload)
{
    cJSON *j_root = cJSON_CreateObject();
    cJSON *j_payload = cJSON_CreateObject();

    const cJSON *j_payload_pingval = cJSON_GetObjectItemCaseSensitive(j_req_payload, "pingval");
    if (j_payload_pingval && cJSON_IsNumber(j_payload_pingval))
    {
        cJSON_AddItemToObject(j_payload, "pingval", cJSON_CreateNumber(j_payload_pingval->valueint));
    }
    else
    {
        cJSON_AddItemToObject(j_payload, "pingval", cJSON_CreateNumber(0));
    }

    cJSON_AddItemToObject(j_root, "response", cJSON_CreateString("pong"));
    cJSON_AddItemToObject(j_root, "payload", j_payload);

    char *out_str = cJSON_Print(j_root);
    _send_packet(src_conn, (uint8_t *) out_str, strlen(out_str));
    free(out_str);
    cJSON_Delete(j_root);
}

static void _handle_request_update_config(struct tcp_connection *src_conn, const cJSON *j_req_payload)
{
    int rc;
    char *err_str = NULL;

    const cJSON *j_payload_new_config = cJSON_GetObjectItemCaseSensitive(j_req_payload, "new_config");
    if (!j_payload_new_config)
    {
        _handle_request_error(src_conn, "Invalid setting for 'sim_running_setval'");
        return;
    }

    struct ipdriver_sim_config sim_cfg = {0};
    rc = ipdriver_sim_config_from_json(j_payload_new_config, &sim_cfg);
    if (0 == rc)
    {
        // Load the simulation config to the IP core.
        rc = ipdriver_sim_config_update(&sim_cfg);
    }

    cJSON *j_root = cJSON_CreateObject();
    cJSON *j_payload = cJSON_CreateObject();

    cJSON_AddItemToObject(j_payload, "success", cJSON_CreateBool(0 == rc));
    if (0 != rc)
    {
        err_str = (char *) calloc(1, strlen(ipdriver_err_str()) + 1);
        strcpy(err_str, ipdriver_err_str());
        cJSON_AddItemToObject(j_payload, "error", cJSON_CreateString(err_str));
    }
    
    cJSON_AddItemToObject(j_root, "response", cJSON_CreateString("update_config"));
    cJSON_AddItemToObject(j_root, "payload", j_payload);

    char *out_str = cJSON_Print(j_root);
    _send_packet(src_conn, (uint8_t *) out_str, strlen(out_str));
    free(out_str);
    if (err_str) free(err_str);
    cJSON_Delete(j_root);
}

static void _handle_request_get_sim_running(struct tcp_connection *src_conn, const cJSON *j_req_payload)
{
    const int sim_running = ipdriver_sim_running();

    cJSON *j_root = cJSON_CreateObject();
    cJSON *j_payload = cJSON_CreateObject();

    cJSON_AddItemToObject(j_payload, "sim_running", cJSON_CreateBool(sim_running));

    cJSON_AddItemToObject(j_root, "response", cJSON_CreateString("get_sim_running"));
    cJSON_AddItemToObject(j_root, "payload", j_payload);

    char *out_str = cJSON_Print(j_root);
    _send_packet(src_conn, (uint8_t *) out_str, strlen(out_str));
    free(out_str);
    cJSON_Delete(j_root);
}

static void _handle_request_set_sim_running(struct tcp_connection *src_conn, const cJSON *j_req_payload)
{
    const cJSON *j_sim_running_setval = cJSON_GetObjectItemCaseSensitive(j_req_payload, "sim_running_setval");
    if (!j_sim_running_setval || !cJSON_IsBool(j_sim_running_setval))
    {
        _handle_request_error(src_conn, "Invalid setting for 'sim_running_setval'");
        return;
    }

    // Set sim state.
    int rc;
    if (j_sim_running_setval->valueint)
        rc = ipdriver_sim_start();
    else
        rc = ipdriver_sim_stop();

    cJSON *j_root = cJSON_CreateObject();
    cJSON *j_payload = cJSON_CreateObject();

    cJSON_AddItemToObject(j_payload, "success", cJSON_CreateBool(0 == rc));

    cJSON_AddItemToObject(j_root, "response", cJSON_CreateString("set_sim_running"));
    cJSON_AddItemToObject(j_root, "payload", j_payload);

    char *out_str = cJSON_Print(j_root);
    _send_packet(src_conn, (uint8_t *) out_str, strlen(out_str));
    free(out_str);
    cJSON_Delete(j_root);
}

static void _handle_request_do_sim_reset(struct tcp_connection *src_conn, const cJSON *j_req_payload)
{
    const int rc = ipdriver_do_reset();

    cJSON *j_root = cJSON_CreateObject();
    cJSON *j_payload = cJSON_CreateObject();

    cJSON_AddItemToObject(j_payload, "success", cJSON_CreateBool(rc == 0));

    cJSON_AddItemToObject(j_root, "response", cJSON_CreateString("do_sim_reset"));
    cJSON_AddItemToObject(j_root, "payload", j_payload);

    char *out_str = cJSON_Print(j_root);
    _send_packet(src_conn, (uint8_t *) out_str, strlen(out_str));
    free(out_str);
    cJSON_Delete(j_root);
}

static void _handle_request_reset_adc_calib(struct tcp_connection *src_conn, const cJSON *j_req_payload)
{
    const int rc = ipdriver_reset_adc_calib();

    cJSON *j_root = cJSON_CreateObject();
    cJSON *j_payload = cJSON_CreateObject();

    cJSON_AddItemToObject(j_payload, "success", cJSON_CreateBool(rc == 0));

    cJSON_AddItemToObject(j_root, "response", cJSON_CreateString("reset_adc_calib"));
    cJSON_AddItemToObject(j_root, "payload", j_payload);

    char *out_str = cJSON_Print(j_root);
    _send_packet(src_conn, (uint8_t *) out_str, strlen(out_str));
    free(out_str);
    cJSON_Delete(j_root);
}

static void _handle_request_set_adc_calib(struct tcp_connection *src_conn, const cJSON *j_req_payload)
{
    const cJSON *j_adc0_offset = cJSON_GetObjectItemCaseSensitive(j_req_payload, "adc0_offset");
    const cJSON *j_adc0_factor = cJSON_GetObjectItemCaseSensitive(j_req_payload, "adc0_factor");
    const cJSON *j_adc1_offset = cJSON_GetObjectItemCaseSensitive(j_req_payload, "adc1_offset");
    const cJSON *j_adc1_factor = cJSON_GetObjectItemCaseSensitive(j_req_payload, "adc1_factor");
    const double *adc0_offset = NULL;
    const double *adc0_factor = NULL;
    const double *adc1_offset = NULL;
    const double *adc1_factor = NULL;
    
    if (cJSON_IsNumber(j_adc0_offset))
        adc0_offset = &j_adc0_offset->valuedouble;
    if (cJSON_IsNumber(j_adc0_factor))
        adc0_factor = &j_adc0_factor->valuedouble;
    if (cJSON_IsNumber(j_adc1_offset))
        adc1_offset = &j_adc1_offset->valuedouble;
    if (cJSON_IsNumber(j_adc1_factor))
        adc1_factor = &j_adc1_factor->valuedouble;

    const int rc = ipdriver_set_adc_calib(adc0_offset, adc0_factor, adc1_offset, adc1_factor);

    cJSON *j_root = cJSON_CreateObject();
    cJSON *j_payload = cJSON_CreateObject();

    cJSON_AddItemToObject(j_payload, "success", cJSON_CreateBool(rc == 0));

    cJSON_AddItemToObject(j_root, "response", cJSON_CreateString("set_adc_calib"));
    cJSON_AddItemToObject(j_root, "payload", j_payload);

    char *out_str = cJSON_Print(j_root);
    _send_packet(src_conn, (uint8_t *) out_str, strlen(out_str));
    free(out_str);
    cJSON_Delete(j_root);
}

static void _handle_request_get_adc_calib(struct tcp_connection *src_conn, const cJSON *j_req_payload)
{
    double adc0_offset = 0.0, adc0_factor = 0.0, adc1_offset = 0.0, adc1_factor = 0.0;
    const int rc = ipdriver_get_adc_calib(&adc0_offset, &adc0_factor, &adc1_offset, &adc1_factor);

    cJSON *j_root = cJSON_CreateObject();
    cJSON *j_payload = cJSON_CreateObject();

    cJSON_AddItemToObject(j_payload, "success", cJSON_CreateBool(rc == 0));
    if (0 == rc)
    {
        cJSON_AddItemToObject(j_payload, "adc0_offset", cJSON_CreateNumber(adc0_offset));
        cJSON_AddItemToObject(j_payload, "adc0_factor", cJSON_CreateNumber(adc0_factor));
        cJSON_AddItemToObject(j_payload, "adc1_offset", cJSON_CreateNumber(adc1_offset));
        cJSON_AddItemToObject(j_payload, "adc1_factor", cJSON_CreateNumber(adc1_factor));
    }

    cJSON_AddItemToObject(j_root, "response", cJSON_CreateString("get_adc_calib"));
    cJSON_AddItemToObject(j_root, "payload", j_payload);

    char *out_str = cJSON_Print(j_root);
    _send_packet(src_conn, (uint8_t *) out_str, strlen(out_str));
    free(out_str);
    cJSON_Delete(j_root);
}

static void _handle_request_do_adc_zero_calib(struct tcp_connection *src_conn, const cJSON *j_req_payload)
{
    const int rc = ipdriver_do_adc_zero_calib();

    cJSON *j_root = cJSON_CreateObject();
    cJSON *j_payload = cJSON_CreateObject();

    cJSON_AddItemToObject(j_payload, "success", cJSON_CreateBool(rc == 0));

    cJSON_AddItemToObject(j_root, "response", cJSON_CreateString("do_adc_zero_calib"));
    cJSON_AddItemToObject(j_root, "payload", j_payload);

    char *out_str = cJSON_Print(j_root);
    _send_packet(src_conn, (uint8_t *) out_str, strlen(out_str));
    free(out_str);
    cJSON_Delete(j_root);
}

static void _handle_request_read_adc(struct tcp_connection *src_conn, const cJSON *j_req_payload)
{
    double adc0_val = 0, adc1_val = 0;
    const int rc = ipdriver_read_adc(&adc0_val, &adc1_val);

    cJSON *j_root = cJSON_CreateObject();
    cJSON *j_payload = cJSON_CreateObject();

    cJSON_AddItemToObject(j_payload, "success", cJSON_CreateBool(rc == 0));
    if (0 == rc)
    {
        cJSON_AddItemToObject(j_payload, "adc0_value", cJSON_CreateNumber(adc0_val));
        cJSON_AddItemToObject(j_payload, "adc1_value", cJSON_CreateNumber(adc1_val));
    }

    cJSON_AddItemToObject(j_root, "response", cJSON_CreateString("read_adc"));
    cJSON_AddItemToObject(j_root, "payload", j_payload);

    char *out_str = cJSON_Print(j_root);
    _send_packet(src_conn, (uint8_t *) out_str, strlen(out_str));
    free(out_str);
    cJSON_Delete(j_root);
}

static void _handle_request_reset_dac_calib(struct tcp_connection *src_conn, const cJSON *j_req_payload)
{
    const int rc = ipdriver_reset_dac_calib();

    cJSON *j_root = cJSON_CreateObject();
    cJSON *j_payload = cJSON_CreateObject();

    cJSON_AddItemToObject(j_payload, "success", cJSON_CreateBool(rc == 0));

    cJSON_AddItemToObject(j_root, "response", cJSON_CreateString("reset_dac_calib"));
    cJSON_AddItemToObject(j_root, "payload", j_payload);

    char *out_str = cJSON_Print(j_root);
    _send_packet(src_conn, (uint8_t *) out_str, strlen(out_str));
    free(out_str);
    cJSON_Delete(j_root);
}

static void _handle_request_set_dac_calib(struct tcp_connection *src_conn, const cJSON *j_req_payload)
{
    const cJSON *j_dac0_offset = cJSON_GetObjectItemCaseSensitive(j_req_payload, "dac0_offset");
    const cJSON *j_dac0_factor = cJSON_GetObjectItemCaseSensitive(j_req_payload, "dac0_factor");
    const cJSON *j_dac1_offset = cJSON_GetObjectItemCaseSensitive(j_req_payload, "dac1_offset");
    const cJSON *j_dac1_factor = cJSON_GetObjectItemCaseSensitive(j_req_payload, "dac1_factor");
    const double *dac0_offset = NULL;
    const double *dac0_factor = NULL;
    const double *dac1_offset = NULL;
    const double *dac1_factor = NULL;
    
    if (cJSON_IsNumber(j_dac0_offset))
        dac0_offset = &j_dac0_offset->valuedouble;
    if (cJSON_IsNumber(j_dac0_factor))
        dac0_factor = &j_dac0_factor->valuedouble;
    if (cJSON_IsNumber(j_dac1_offset))
        dac1_offset = &j_dac1_offset->valuedouble;
    if (cJSON_IsNumber(j_dac1_factor))
        dac1_factor = &j_dac1_factor->valuedouble;

    const int rc = ipdriver_set_dac_calib(dac0_offset, dac0_factor, dac1_offset, dac1_factor);

    cJSON *j_root = cJSON_CreateObject();
    cJSON *j_payload = cJSON_CreateObject();

    cJSON_AddItemToObject(j_payload, "success", cJSON_CreateBool(rc == 0));

    cJSON_AddItemToObject(j_root, "response", cJSON_CreateString("set_dac_calib"));
    cJSON_AddItemToObject(j_root, "payload", j_payload);

    char *out_str = cJSON_Print(j_root);
    _send_packet(src_conn, (uint8_t *) out_str, strlen(out_str));
    free(out_str);
    cJSON_Delete(j_root);
}

static void _handle_request_get_dac_calib(struct tcp_connection *src_conn, const cJSON *j_req_payload)
{
    double dac0_offset = 0.0, dac0_factor = 0.0, dac1_offset = 0.0, dac1_factor = 0.0;
    const int rc = ipdriver_get_dac_calib(&dac0_offset, &dac0_factor, &dac1_offset, &dac1_factor);

    cJSON *j_root = cJSON_CreateObject();
    cJSON *j_payload = cJSON_CreateObject();

    cJSON_AddItemToObject(j_payload, "success", cJSON_CreateBool(rc == 0));
    if (0 == rc)
    {
        cJSON_AddItemToObject(j_payload, "dac0_offset", cJSON_CreateNumber(dac0_offset));
        cJSON_AddItemToObject(j_payload, "dac0_factor", cJSON_CreateNumber(dac0_factor));
        cJSON_AddItemToObject(j_payload, "dac1_offset", cJSON_CreateNumber(dac1_offset));
        cJSON_AddItemToObject(j_payload, "dac1_factor", cJSON_CreateNumber(dac1_factor));
    }

    cJSON_AddItemToObject(j_root, "response", cJSON_CreateString("get_dac_calib"));
    cJSON_AddItemToObject(j_root, "payload", j_payload);

    char *out_str = cJSON_Print(j_root);
    _send_packet(src_conn, (uint8_t *) out_str, strlen(out_str));
    free(out_str);
    cJSON_Delete(j_root);
}

static void _handle_request_set_nlfsw_iomask(struct tcp_connection *src_conn, const cJSON *j_req_payload)
{
    const cJSON *j_iomask = cJSON_GetObjectItemCaseSensitive(j_req_payload, "iomask");
    
    if (!cJSON_IsNumber(j_iomask))
    {
        _handle_request_error(src_conn, "Invalid value for 'iomask'");
        return;
    }

    const uint32_t iomask = (uint32_t) j_iomask->valueint;
    int rc = ipdriver_set_nlfsw_iomask(iomask);

    cJSON *j_root = cJSON_CreateObject();
    cJSON *j_payload = cJSON_CreateObject();

    cJSON_AddItemToObject(j_payload, "success", cJSON_CreateBool(0 == rc));
    cJSON_AddItemToObject(j_root, "response", cJSON_CreateString("set_nlfsw_iomask"));
    cJSON_AddItemToObject(j_root, "payload", j_payload);

    char *out_str = cJSON_Print(j_root);
    _send_packet(src_conn, (uint8_t *) out_str, strlen(out_str));
    free(out_str);
    cJSON_Delete(j_root);
}

static void _handle_request_get_nlfsw_iomask(struct tcp_connection *src_conn, const cJSON *j_req_payload)
{
    uint32_t iomask = 0;
    const int rc = ipdriver_get_nlfsw_iomask(&iomask);

    cJSON *j_root = cJSON_CreateObject();
    cJSON *j_payload = cJSON_CreateObject();

    cJSON_AddItemToObject(j_payload, "success", cJSON_CreateBool(0 == rc));
    if (0 == rc)
    {
        cJSON_AddItemToObject(j_payload, "iomask", cJSON_CreateNumber(iomask));
    }

    cJSON_AddItemToObject(j_root, "response", cJSON_CreateString("get_nlfsw_iomask"));
    cJSON_AddItemToObject(j_root, "payload", j_payload);

    char *out_str = cJSON_Print(j_root);
    _send_packet(src_conn, (uint8_t *) out_str, strlen(out_str));
    free(out_str);
    cJSON_Delete(j_root);
}

static void _handle_request_set_nlfsw_sel(struct tcp_connection *src_conn, const cJSON *j_req_payload)
{
    const cJSON *j_sel = cJSON_GetObjectItemCaseSensitive(j_req_payload, "sel");
    
    if (!cJSON_IsNumber(j_sel))
    {
        _handle_request_error(src_conn, "Invalid value for 'sel'");
        return;
    }

    const uint32_t sel = (uint32_t) j_sel->valueint;
    int rc = ipdriver_set_nlfsw_software_sel(sel);

    cJSON *j_root = cJSON_CreateObject();
    cJSON *j_payload = cJSON_CreateObject();

    cJSON_AddItemToObject(j_payload, "success", cJSON_CreateBool(0 == rc));
    cJSON_AddItemToObject(j_root, "response", cJSON_CreateString("set_nlfsw_sel"));
    cJSON_AddItemToObject(j_root, "payload", j_payload);

    char *out_str = cJSON_Print(j_root);
    _send_packet(src_conn, (uint8_t *) out_str, strlen(out_str));
    free(out_str);
    cJSON_Delete(j_root);
}

static void _handle_request_get_nlfsw_sel(struct tcp_connection *src_conn, const cJSON *j_req_payload)
{
    uint32_t sel = 0;
    const int rc = ipdriver_get_nlfsw_software_sel(&sel);

    cJSON *j_root = cJSON_CreateObject();
    cJSON *j_payload = cJSON_CreateObject();

    cJSON_AddItemToObject(j_payload, "success", cJSON_CreateBool(0 == rc));
    if (0 == rc)
    {
        cJSON_AddItemToObject(j_payload, "sel", cJSON_CreateNumber(sel));
    }

    cJSON_AddItemToObject(j_root, "response", cJSON_CreateString("get_nlfsw_sel"));
    cJSON_AddItemToObject(j_root, "payload", j_payload);

    char *out_str = cJSON_Print(j_root);
    _send_packet(src_conn, (uint8_t *) out_str, strlen(out_str));
    free(out_str);
    cJSON_Delete(j_root);
}

static void _handle_request_get_nlfsw_current(struct tcp_connection *src_conn, const cJSON *j_req_payload)
{
    uint32_t nlfsw_current = 0;
    const int rc = ipdriver_get_nlfsw_current_sel(&nlfsw_current);

    cJSON *j_root = cJSON_CreateObject();
    cJSON *j_payload = cJSON_CreateObject();

    cJSON_AddItemToObject(j_payload, "success", cJSON_CreateBool(0 == rc));
    if (0 == rc)
    {
        cJSON_AddItemToObject(j_payload, "nlfsw_current", cJSON_CreateNumber(nlfsw_current));
    }

    cJSON_AddItemToObject(j_root, "response", cJSON_CreateString("get_nlfsw_current"));
    cJSON_AddItemToObject(j_root, "payload", j_payload);

    char *out_str = cJSON_Print(j_root);
    _send_packet(src_conn, (uint8_t *) out_str, strlen(out_str));
    free(out_str);
    cJSON_Delete(j_root);
}

static void _handle_request_configure_daq(struct tcp_connection *src_conn, const cJSON *j_req_payload)
{
    const cJSON *j_daq_nframes = cJSON_GetObjectItemCaseSensitive(j_req_payload, "num_frames");
    const cJSON *j_daq_framestride = cJSON_GetObjectItemCaseSensitive(j_req_payload, "frame_stride");
    const cJSON *j_daq_channel_mask = cJSON_GetObjectItemCaseSensitive(j_req_payload, "channel_mask");
    const cJSON *j_daq_trigger = cJSON_GetObjectItemCaseSensitive(j_req_payload, "trigger");

    if (!j_daq_nframes || !cJSON_IsNumber(j_daq_nframes))
    {
        _handle_request_error(src_conn, "Invalid setting for 'num_frames'");
        return;
    }

    if (!j_daq_framestride || !cJSON_IsNumber(j_daq_framestride))
    {
        _handle_request_error(src_conn, "Invalid setting for 'frame_stride'");
        return;
    }

    if (!j_daq_channel_mask || !cJSON_IsNumber(j_daq_channel_mask))
    {
        _handle_request_error(src_conn, "Invalid setting for 'channel_mask'");
        return;
    }

    if (!j_daq_trigger || !cJSON_IsNumber(j_daq_trigger))
    {
        _handle_request_error(src_conn, "Invalid setting for 'trigger'");
        return;
    }

    const int rc = daq_configure(
        (uint32_t) j_daq_nframes->valueint,
        (uint32_t) j_daq_framestride->valueint,
        (uint8_t) j_daq_channel_mask->valueint,
        (enum daq_trigger) j_daq_trigger->valueint
    );

    cJSON *j_root = cJSON_CreateObject();
    cJSON *j_payload = cJSON_CreateObject();

    cJSON_AddItemToObject(j_payload, "success", cJSON_CreateBool(0 == rc));

    cJSON_AddItemToObject(j_root, "response", cJSON_CreateString("configure_daq"));
    cJSON_AddItemToObject(j_root, "payload", j_payload);

    char *out_str = cJSON_Print(j_root);
    _send_packet(src_conn, (uint8_t *) out_str, strlen(out_str));
    free(out_str);
    cJSON_Delete(j_root);
}

static void _handle_request_prime_daq(struct tcp_connection *src_conn, const cJSON *j_req_payload)
{
    const int rc = daq_prime();

    cJSON *j_root = cJSON_CreateObject();
    cJSON *j_payload = cJSON_CreateObject();

    cJSON_AddItemToObject(j_payload, "success", cJSON_CreateBool(rc == 0));

    cJSON_AddItemToObject(j_root, "response", cJSON_CreateString("prime_daq"));
    cJSON_AddItemToObject(j_root, "payload", j_payload);

    char *out_str = cJSON_Print(j_root);
    _send_packet(src_conn, (uint8_t *) out_str, strlen(out_str));
    free(out_str);
    cJSON_Delete(j_root);
}

static void _handle_request_check_finished_daq(struct tcp_connection *src_conn, const cJSON *j_req_payload)
{
    const int rc = daq_is_complete();

    cJSON *j_root = cJSON_CreateObject();
    cJSON *j_payload = cJSON_CreateObject();

    cJSON_AddItemToObject(j_payload, "success", cJSON_CreateBool(1));
    cJSON_AddItemToObject(j_payload, "daq_finished", cJSON_CreateBool(rc));

    cJSON_AddItemToObject(j_root, "response", cJSON_CreateString("check_finished_daq"));
    cJSON_AddItemToObject(j_root, "payload", j_payload);

    char *out_str = cJSON_Print(j_root);
    _send_packet(src_conn, (uint8_t *) out_str, strlen(out_str));
    free(out_str);
    cJSON_Delete(j_root);
}

static void _handle_request_send_daq_data(struct tcp_connection *src_conn, const cJSON *j_req_payload)
{
    const cJSON *j_offset = cJSON_GetObjectItemCaseSensitive(j_req_payload, "offset");
    const cJSON *j_length = cJSON_GetObjectItemCaseSensitive(j_req_payload, "length");

    if (!j_offset || !cJSON_IsNumber(j_offset))
    {
        _handle_request_error(src_conn, "Invalid setting for 'offset'");
        return;
    }

    if (!j_length || !cJSON_IsNumber(j_length))
    {
        _handle_request_error(src_conn, "Invalid setting for 'length'");
        return;
    }

    // Send JSON packet response first.
    cJSON *j_root = cJSON_CreateObject();
    cJSON *j_payload = cJSON_CreateObject();

    cJSON_AddItemToObject(j_payload, "success", cJSON_CreateBool(1));
    cJSON_AddItemToObject(j_root, "response", cJSON_CreateString("send_daq_data"));
    cJSON_AddItemToObject(j_root, "payload", j_payload);

    char *out_str = cJSON_Print(j_root);
    _send_packet(src_conn, (uint8_t *) out_str, strlen(out_str));
    free(out_str);
    cJSON_Delete(j_root);

    // Send data.
    daq_send_to_fd(src_conn->conn_fd, (uint32_t) j_offset->valueint, (uint32_t) j_length->valueint);
}

static void _send_packet(struct tcp_connection *src_conn, const uint8_t *payload, size_t payload_size)
{
    int rc;

    const size_t packet_buf_size = payload_size + PACKET_HEADER_SZ;
    uint8_t *packet_buf = (uint8_t *) malloc(packet_buf_size);
    if (!packet_buf)
    {
        fprintf(stderr, "Failed to allocate memory for packet buffer.\n");
        return;
    }

    *(uint32_t *) packet_buf = htonl((uint32_t) payload_size);
    memcpy(packet_buf + 4, payload, payload_size);

    rc = send(src_conn->conn_fd, packet_buf, packet_buf_size, 0);
    if (rc != packet_buf_size)
    {
        fprintf(stderr, "Failed to transmit packet of size %d. Got error %d.\n", packet_buf_size, rc);
    }
    
    free(packet_buf);
}
