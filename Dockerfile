FROM ubuntu:24.10
RUN apt update
RUN apt install -y iputils-ping iproute2