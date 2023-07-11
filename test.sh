#!/bin/sh

set -e

cleanup() {
  set +e

  echo "Logs"
  docker logs test

  echo "Stopping Docker image"
  docker stop test
  docker rm -f test
}

echo "Preparing"
apk add --no-cache iperf

echo "Running Docker image"
docker run -d --name test -p 5001:5001 -e LOG_TO_STDOUT=1 "${CI_REGISTRY_IMAGE}:${TAG}"
trap cleanup EXIT

echo "Sleeping"
sleep 10

echo "Testing"
# We check if there is any comma in succesful CSV output. On errors there is no CSV output.
iperf --client docker --port 5001 --reportstyle C --time 10 | grep -q ,
echo "Success"
