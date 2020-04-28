FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install -y nasm binutils vim nano

COPY assembler_zad /home/root/

WORKDIR /home/root
RUN chmod +x test.sh
