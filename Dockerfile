FROM alpine:latest
LABEL MAINTAINER="https://github.com/sangeet0611/Ex-Phisher"
WORKDIR /exphisher/
ADD . /exphisher
RUN apk add --no-cache bash ncurses curl unzip wget php 
CMD "./exphisher.sh"
