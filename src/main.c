#include <stdio.h>
#include <string.h>
#include<sys/socket.h>
#include <netinet/in.h>
#include<arpa/inet.h>

int main() {
    int socket_desc;

    socket_desc = socket(AF_INET, SOCK_STREAM, IPPROTO_IP);

    if (socket_desc == -1) {
        printf("Could not create socket!");
    }

    struct sockaddr_in device;

    device.sin_addr.s_addr = inet_addr("192.168.1.1");
    device.sin_family = AF_INET;
    device.sin_port = htons(80);

    if (connect(socket_desc, (struct sockaddr *) &device, sizeof(device)) < 0) {
        puts("connect error");
        return 1;
    }

    puts("connected");

    const char* message = "GET / HTTP/1.1\r\n\r\n";
    if( send(socket_desc , message , strlen(message) , 0) < 0)
    {
        puts("Send failed");
        return 1;
    }
    puts("Data Send\n");


    char server_reply[2000];
    //Receive a reply from the server
    if( recv(socket_desc, server_reply , 2000 , 0) < 0)
    {
        puts("recv failed");
    }
    puts("Reply received:\n");
    puts(server_reply);

    return 0;
}
