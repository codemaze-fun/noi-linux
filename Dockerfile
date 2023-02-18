FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install -y gcc g++ fpc
