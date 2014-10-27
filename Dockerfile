FROM golang
MAINTAINER parasquid <tristan.gomez@gmail.com>

RUN apt-get update
RUN apt-get -y install software-properties-common python-software-properties

RUN go get github.com/Vimeo/statsdaemon
ADD ./statsdaemon.ini /etc/statsdaemon.ini

EXPOSE 8126

