FROM registry.gitlab.com/tozd/docker/dinit:ubuntu-noble

EXPOSE 5001/tcp

RUN apt-get update -q -q && \
  apt-get --yes --force-yes install iperf && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ~/.cache ~/.npm

COPY ./etc/service/iperf /etc/service/iperf
