FROM ubuntu:latest

MAINTAINER Guido Schmutz <guido.schmutz@trivadis.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install wget build-essential libwrap0-dev libssl-dev python-distutils-extra libc-ares-dev -y
RUN mkdir -p /usr/local/src
WORKDIR /usr/local/src
RUN wget http://mosquitto.org/files/source/mosquitto-1.4.12.tar.gz
RUN tar xvzf ./mosquitto-1.4.12.tar.gz
WORKDIR /usr/local/src/mosquitto-1.4.12
RUN make
RUN make install
RUN adduser --system --disabled-password --disabled-login mosquitto
EXPOSE 1883
CMD ["/usr/local/sbin/mosquitto"]
