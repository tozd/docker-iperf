FROM registry.gitlab.com/tozd/docker/dinit:ubuntu-xenial

EXPOSE 5001/tcp

ENV DINIT_JSON_STDOUT=0

RUN apt-get update -q -q && \
  apt-get --yes --force-yes install iperf && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ~/.cache ~/.npm

COPY ./etc/service/iperf /etc/service/iperf
