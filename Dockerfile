# VERSION 1.0
FROM testacitoolkit:v1
MAINTAINER Chad Peterson, chapeter@cisco.com
#RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" > /etc/apt/sources.list
#RUN apt-get update
RUN apt-get -y install mysql-server
WORKDIR /opt
RUN git clone https://github.com/chapeter/acitoolkitdemo
WORKDIR acitoolkitdemo
