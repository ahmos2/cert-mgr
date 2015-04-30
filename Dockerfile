FROM debian:jessie
MAINTAINER Martin Sundhaug

RUN apt-get update
RUN apt-get install openssl -y

RUN mkdir /certs
COPY . /certs
VOLUME /certs/ada
WORKDIR /certs/

ENTRYPOINT /certs/makeCA.sh
