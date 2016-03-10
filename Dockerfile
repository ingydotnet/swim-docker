FROM alpine:latest

COPY build /.build

RUN sh /.build

ENTRYPOINT /usr/local/bin/swim
