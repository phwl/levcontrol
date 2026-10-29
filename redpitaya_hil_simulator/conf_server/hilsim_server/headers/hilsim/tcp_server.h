/*******************************************************************************
*
*   tcp_server.h
*   ============
*
*   Simple TCP/IP server for interfacing with the HIL simulator.
*
*   Date        Rev.No. Author      Description
*   ----------------------------------------------------------------------------
*   22.07.2024  v1.0    jbd         Created.
*   ----------------------------------------------------------------------------
*
*   Author Glossary:
*    - jbd : Johannes Berndorfer, ACIN, Technische Universität Wien
*
*   Copyright (c) 2024 Johannes Berndorfer
*
*******************************************************************************/

#pragma once

#define TCP_SERVER_MAXCONNS     4

void init_tcp_server();
int start_tcp_server(const char *bind_addr, unsigned short bind_port);
int stop_tcp_server();