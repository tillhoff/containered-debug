FROM debian:buster

LABEL maintainer="till.hoffmann@enforge.de"

RUN \
  apt update && \
  apt upgrade -y && \
  apt install -y \
    curl \
    wget \
    nano \
# for nslookup,dig:
    dnsutils \
# for ping:
    iputils-ping \
# for ifconfig:
    net-tools \
    && \
  apt autoremove -y && \
  apt autoclean

CMD /bin/bash
