FROM debian

RUN apt-get update -y
RUN apt-get install -y nasm binutils g++ vim nano wget unzip

COPY assembler_zad /home/root/

WORKDIR /home/root
