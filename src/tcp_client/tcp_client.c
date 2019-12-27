#include "tcp_client.h"
#include <stdlib.h>

void set_ip_address(const char *ip_address) {
    strcpy(_ip_address, ip_address);
}

int connect_to_server() {
    int socket_desc;

    socket_desc = socket(AF_INET, SOCK_STREAM, IPPROTO_IP);

    if (socket_desc == -1) {
        printf("Could not create socket!");
    }

    struct sockaddr_in device;

    device.sin_addr.s_addr = inet_addr(_ip_address);
    device.sin_family = AF_INET;
    device.sin_port = htons(22);

    if (connect(socket_desc, (struct sockaddr *) &device, sizeof(device)) < 0) {
        puts("connect error");
        return 1;
    }

    return socket_desc;
}

bool send_to_server(int socket_desc, const char *msg) {

    if (send(socket_desc, msg, strlen(msg), 0) < 0) {
        puts("Send failed");
        return 1;
    }

    return true;
}

const char *receive_from_server(int socket_desc) {
    char *server_reply = (char *) malloc(2000);

    if (recv(socket_desc, server_reply, 2000, 0) < 0) {
        puts("recv failed");
    }

    return server_reply;
}