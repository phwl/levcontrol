/*******************************************************************************
*
*   main.c
*   ======
*
*   Main file of the HILSIM configuration server.
*
*   Date        Rev.No. Author      Description
*   ----------------------------------------------------------------------------
*   20.05.2024  v1.0    jbd         Created.
*   ----------------------------------------------------------------------------
*
*   Author Glossary:
*    - jbd : Johannes Berndorfer, ACIN, Technische Universität Wien
*
*   Copyright (c) 2024 Johannes Berndorfer
*
*******************************************************************************/

#define _GNU_SOURCE

#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <errno.h>
#include <string.h>
#include <unistd.h>
#include <argp.h>

#include <hilsim/ipdriver.h>
#include <hilsim/tcp_server.h>
#include <hilsim/daq.h>

#define BITSTREAM_FILE      "/etc/hilsim/ipcore.bit"

struct program_args
{
    char *bitstream_file;
    char *bind_addr;
    unsigned short bind_port;
};

const char *argp_program_version = "v1.0-r1";
const char *argp_program_bug_address = "<johannes.berndorfer@tuwien.ac.at>";
const char argp_doc[] = "A simple TCP server for remotely configuring the HIL-Simulator IP-Core for stochastic nonlinear systems.";
const char argp_args_doc[] = "[OPTIONS]";

static error_t parse_opt(int key, char *arg, struct argp_state *state);

static struct argp_option argopts[] = {
    {"bitfile", 'b', "value", 0, "Specify a bistream file to use instead of the default."},
    {"port", 'p', "value", 0, "Bind port of the TCP server."},
    {"bindaddr", 'a', "value", 0, "Bind address of the TCP server."},
    {0}
};

static struct argp argp_conf = {
    .options = argopts,
    .parser = parse_opt,
    .args_doc = argp_args_doc,
    .args_doc = argp_doc,
    .children = NULL,
    .help_filter = NULL,
    .argp_domain = NULL
};

struct program_args g_args = {0};
static int signal_pipe[2] = {-1, -1};

static error_t parse_opt(int key, char *arg, struct argp_state *state)
{
    struct program_args *args_out = (struct program_args *) state->input;
    int rc;
    int port_val = -1;

    switch (key)
    {
        case 'b':
            if (args_out->bitstream_file) free(args_out->bitstream_file);
            args_out->bitstream_file = malloc(strlen(arg) + 1);
            strcpy(args_out->bitstream_file, arg);
            break;

        case 'a':
            if (args_out->bind_addr) free(args_out->bind_addr);
            args_out->bind_addr = malloc(strlen(arg) + 1);
            strcpy(args_out->bind_addr, arg);
            break;

        case 'p':
            rc = sscanf(arg, "%d", &port_val);
            if (1 != rc || port_val <= 0 || port_val >= 65536)
            {
                fprintf(stderr, "Specified bind port is not a valid value. Specify a port between 0-65535.\n");
                return EINVAL;
            }
            args_out->bind_port = (unsigned short) port_val;
            break;

        case ARGP_KEY_ARG:
            return 0;

        default:
            return ARGP_ERR_UNKNOWN;
    }

    return 0;
}

static void cleanup()
{
    // Close the TCP server.
    stop_tcp_server();
    
    // Clean up ipdriver.
    ipdriver_deinit();

    if (g_args.bitstream_file) free(g_args.bitstream_file);
    if (g_args.bind_addr) free(g_args.bind_addr);
}

static void signal_handler(int signal_num)
{
    // We cannot safely terminate the program from here, as exit() and other
    // heap-related functions are async-signal-unsafe. Thus, we use the prepared
    // signal pipe to signal to the main thread that we want to exit safely.
    uint8_t msg = 0xff;
    write(signal_pipe[1], &msg, 1);
}

int main(int argc, char *argv[])
{
    int rc = 0;

    atexit(cleanup);
    
    // Create a pipe for safely handling messages from signal handlers.
    rc = pipe(signal_pipe);
    if (0 != rc)
    {
        fprintf(stderr, "Failed to create signal notification pipe.\n");
        goto exit;
    }

    // Setup default args.
    g_args.bind_addr = malloc(sizeof("0.0.0.0"));
    strcpy(g_args.bind_addr, "0.0.0.0");

    g_args.bind_port = 1000;

    g_args.bitstream_file = malloc(sizeof(BITSTREAM_FILE));
    strcpy(g_args.bitstream_file, BITSTREAM_FILE);

    // Parse input arguments.
    rc = argp_parse(&argp_conf, argc, argv, 0, 0, &g_args);
    if (0 != rc)
    {
        goto exit;
    }

    // Print hello banner.
    printf("HIL-Simulator Configuration Server\n");
    printf("Copyright (c) 2024 Johannes Berndorfer\n");

    init_tcp_server();

    // Set signal handler for SIGINT, SIGTERM (Ctrl + C)
    signal(SIGINT, signal_handler);
    signal(SIGTERM, signal_handler);

    // Load bitstream.
#if 0
    printf("Loading bitstream file from %s...\n", g_args.bitstream_file);
    rc = ipdriver_load_bitstream(g_args.bitstream_file);
    if (rc)
    {
        fprintf(stderr, "Failed to load ip core bistream, got %d: %s\n", rc, strerror(errno));
        goto exit;
    }
#endif

    // Initialize ipcore driver (map AXI address space to userspace)
    rc = ipdriver_init();
    if (rc)
    {
        fprintf(stderr, "Failed to init ip-driver, got %d\n", rc);
        goto exit;
    }

    // Initialize the DAQ system.
    rc = daq_init();
    if (rc)
    {
        fprintf(stderr, "Failed to init DAQ system, got %d\n", rc);
        goto exit;
    }

    // Set LED to 0xaa to test that things are working as intended...
    //(void) ipdriver_set_led(0xaa);

    rc = start_tcp_server(g_args.bind_addr, g_args.bind_port);
    if (0 != rc)
    {
        fprintf(stderr, "Failed to start TCP server. Terminating.\n");
        goto exit;
    }

    while (1)
    {
        uint8_t msg = 0;
        rc = read(signal_pipe[0], &msg, 1);
        if (1 == rc && 0xff == msg)
            break;
        else if (1 != rc)
            break;
    }

exit:
    return rc;
}
