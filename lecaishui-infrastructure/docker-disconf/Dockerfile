FROM maven
MAINTAINER weird <linkeer8802@gmail.com>

RUN mkdir -p /opt/disconf-rd/online-resources && mkdir -p /opt/disconf-rd/war
WORKDIR /opt

# Environment variables
ENV DISCONF_REPO https://github.com/knightliao/disconf
ENV ONLINE_CONFIG_PATH /opt/disconf-rd/online-resources
ENV WAR_ROOT_PATH /opt/disconf-rd/war

# Add required jars into a extra libarary directory
RUN git clone ${DISCONF_REPO} && cp ./conf/online-resources/*.* disconf-rd/online-resources && cd disconf/disconf-web && sh deploy/deploy.sh

ENTRYPOINT []
CMD ["/bin/bash"]