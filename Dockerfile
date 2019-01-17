FROM debian:bionic

MAINTAINER Meelis Valgeväli <meelis82@gmail.com>

LABEL vendor=adm.ee

ENV TERM xterm

ADD ./src /src

RUN /src/entrypoint.sh build

ENTRYPOINT ["/src/entrypoint.sh", "run"]
