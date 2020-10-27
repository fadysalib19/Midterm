FROM ubuntu
COPY ./code  /root/project
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y gcc g++
WORKDIR  /root
RUN g++ hello_world.cpp  -o main
ENTRYPOINT  ./hello_word
