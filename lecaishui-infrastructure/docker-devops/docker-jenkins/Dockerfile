FROM jenkins:latest

MAINTAINER info@lecaishui.com

USER root

#install node.js
ENV NODE_VERSION 4.8.4

RUN set -ex \
  && wget "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz" \
  && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local \
  && rm "node-v$NODE_VERSION-linux-x64.tar.xz" \
  && ln -s /usr/local/node-v$NODE_VERSION-linux-x64/bin/node /usr/local/bin/node \
  && ln -s /usr/local/node-v$NODE_VERSION-linux-x64/bin/npm /usr/local/bin/npm
  
RUN set -ex \
  && npm install -g cnpm --registry=https://registry.npm.taobao.org \
  && ln -s /usr/local/node-v$NODE_VERSION-linux-x64/bin/cnpm /usr/local/bin/cnpm
    
USER jenkins