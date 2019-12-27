#ifndef DDOS_ATTACK_TCP_CLIENT_H
#define DDOS_ATTACK_TCP_CLIENT_H

#include <stdio.h>
#include <string.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdbool.h>

char _ip_address[32];

void set_ip_address(const char *ip_address);

int connect_to_server();

bool send_to_server(int socket_desc, const char *msg);

const char *receive_from_server(int socket_desc);

#endif
