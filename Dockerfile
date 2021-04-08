FROM debian:10.9-slim

ARG HOST_IP

ENV DISPLAY ${HOST_IP}:0.0

RUN apt update

RUN apt install ns2 -y
RUN apt install nam -y
RUN apt install tclsh -y

CMD ["bash"]