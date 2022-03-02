FROM ubuntu

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Moscow

RUN apt-get update -y
RUN apt-get install -y squid

RUN /usr/sbin/squid --foreground -z
CMD /usr/sbin/squid -sYC
