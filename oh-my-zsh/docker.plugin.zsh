#!/bin/bash

GET() {
    echo -e "GET /info HTTP/1.0\r\n" | nc -U /var/run/docker.sock
}

POST() {

}

DELETE