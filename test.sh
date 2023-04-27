#!/bin/sh

echo "Preparing"
apk add --no-cache iperf || exit 1

echo "Running Docker image"
docker run -d --name test --rm -p 5001:5001 "${CI_REGISTRY_IMAGE}:${TAG}" || exit 1

echo "Sleeping"
sleep 10

echo "Testing"
# We check if there is any comma in succesful CSV output. On errors there is no CSV output.
iperf --client docker --port 5001 --reportstyle C --time 10 | grep -q ,
result=$?

echo "Stopping Docker image"
docker stop test || exit 2

exit "$result"