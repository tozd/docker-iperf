# tozd/iperf

<https://gitlab.com/tozd/docker/iperf>

Available as:

- [`tozd/iperf`](https://hub.docker.com/r/tozd/iperf)
- [`registry.gitlab.com/tozd/docker/iperf`](https://gitlab.com/tozd/docker/iperf/container_registry)

## Image inheritance

[`tozd/base`](https://gitlab.com/tozd/docker/base) ← [`tozd/dinit`](https://gitlab.com/tozd/docker/dinit) ← `tozd/iperf`

## Tags

- `ubuntu-trusty`: iperf 2.0.5
- `ubuntu-xenial`: iperf 2.0.5
- `ubuntu-bionic`: iperf 2.0.10
- `ubuntu-focal`: iperf 2.0.13
- `ubuntu-jammy`: iperf 2.1.5
- `ubuntu-noble`: iperf 2.1.9

## Ports

- `5001/tcp`: HTTP port on which iperf listens.

## Description

The TCP window size option can be set by the environment variable
`TCP_WINDOW_SIZE`. Most other options can be set by an environment variable
`IPERF_<long option name>`, such as `IPERF_BANDWIDTH`.

Docker image logs output to stdout and stderr. All stdout output is JSON.

## GitHub mirror

There is also a [read-only GitHub mirror available](https://github.com/tozd/docker-iperf),
if you need to fork the project there.
