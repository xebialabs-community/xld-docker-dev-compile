FROM xebialabs/xl-docker-demo-xld:v7.6.0.1

MAINTAINER XebiaLabs <info@xebialabs.com>
ENV REFRESHED_AT 2018-03-19

RUN apk --update add openjdk8 bash libstdc++
ADD resources/command.sh /opt/xld/command.sh
VOLUME /data
VOLUME /root/.gradle
WORKDIR /data

CMD ["sh","-x","/opt/xld/command.sh"]
