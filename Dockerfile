FROM xebialabs/xl-docker-demo-xld:v6.2.1.1

MAINTAINER XebiaLabs <info@xebialabs.com>
ENV REFRESHED_AT 2017-04-04

RUN apk --update add openjdk8 bash libstdc++
ADD resources/command.sh /opt/xld/command.sh
VOLUME /data
VOLUME /root/.gradle
WORKDIR /data

CMD ["sh","-x","/opt/xld/command.sh"]
