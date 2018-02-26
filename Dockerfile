FROM resin/rpi-raspbian:jessie
MAINTAINER Justin Garrison <justinleegarrison@gmail.com>

ENV INADYN_VERSION=2.3.1

# install deps
RUN apt-get update && \
    apt-get install -y \
    libssl-dev automake gcc \
    make wget autoconf

RUN wget https://github.com/troglobit/inadyn/releases/download/${INADYN_VERSION}/inadyn-${INADYN_VERSION}.tar.xz -P /tmp
RUN tar xf /tmp/inadyn-${INADYN_VERSION}.tar.xz

WORKDIR inadyn-${INADYN_VERSION}

RUN autoreconf -W portability -visfm && \
    ./configure --enable-openssl && \
    make

RUN rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

CMD bash
