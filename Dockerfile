FROM node:current-alpine

RUN apk update && \
  apk add git make libtool autoconf automake gcc g++ python3

RUN git clone https://github.com/orangepeelbeef/DLAP.git /usr/local/DLAP && \
  cd /usr/local/DLAP && \
  yarn install

RUN apk del git make autoconf automake gcc g++

COPY config.json /usr/local/DLAP/config.json
COPY run.sh /usr/local/bin/run.sh
COPY music /usr/local/DLAP/music

RUN cd /usr/local/DLAP && \
  node deploy-command.js

ENTRYPOINT ["/usr/local/bin/run.sh"]