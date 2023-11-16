FROM ubuntu:latest
RUN apt-get update
RUN apt install sudo
RUN sudo adduser rephila
RUN usermod -aG sudo rephila
RUN su rephila