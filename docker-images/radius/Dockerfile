FROM ubuntu:16.04
MAINTAINER Samina Fu

RUN apt -y update && \
    apt upgrade -y && \
    apt -y install software-properties-common
RUN add-apt-repository -y ppa:freeradius/stable
RUN apt -y update && \
    apt install -y freeradius freeradius-utils

Add install.sh install.sh

EXPOSE \
    1812/udp \
    1813/udp \
    18120

RUN /bin/sh install.sh
CMD freeradius -xx -f
