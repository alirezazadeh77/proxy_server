FROM ubuntu

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Moscow
ENV CFLAGS=" -Dbind=SOCKSbind "
ENV CXXFLAGS=" -Dbind=SOCKSbind "
ENV LDADD=" -lsocks "

RUN apt-get update -y
RUN apt-get install -y squid

RUN /usr/sbin/squid --foreground -z
