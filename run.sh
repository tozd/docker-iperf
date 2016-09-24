#!/bin/bash -e

# An example script to run TCP iperf. It uses hard-coded IP address for the server.

NAME='iperf'
SERVER_IP='10.20.32.10'

docker stop "${NAME}" || true
sleep 1
docker rm "${NAME}" || true
sleep 1
docker run --detach=true --restart=always --name "${NAME}" --publish "$SERVER_IP:5001:5001/tcp" tozd/iperf
