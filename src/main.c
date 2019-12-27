#include "tcp_client/tcp_client.h"

#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include <stdlib.h>

void *myThreadFun(void *exit_status) {
    int *exit_status_local = (int *) exit_status;

    while (*exit_status_local != -1) {
        int socket_desc = connect_to_server();

        send_to_server(socket_desc, "GET / HTTP/1.1\r\n\r\n");

        const char *reply = receive_from_server(socket_desc);

        close(socket_desc);
    }

    return NULL;

}

int main() {

    printf("IP: ");
    char ip[32];
    scanf("%s", &ip);

    set_ip_address(ip);

    printf("Number of threads: ");
    int number_of_threads;
    scanf("%d", &number_of_threads);


    printf("Sending requests on %d threads to %s.\nPress enter to stop.\n", number_of_threads, ip);


    int *exit_status = (int *) alloca(sizeof(int));

    *exit_status = 1;

    pthread_t **threads = malloc(sizeof(pthread_t) * number_of_threads);

    for (int i = 0; i < number_of_threads; i++) {
        int *loc_id = malloc(sizeof(int));
        *loc_id = i;
        pthread_t *thread_id = malloc(sizeof(pthread_t));
        threads[i] = thread_id;
        pthread_create(threads[i], NULL, myThreadFun, (void *) exit_status);
    }

    getchar();
    getchar();
    printf("EXIT TRIGGERED");
    *exit_status = -1;

    return 0;
}
