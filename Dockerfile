FROM debian
RUN apt update
RUN apt install nasm gdb nano -y
COPY ./hello.asm /home/program/hello.asm

