FROM xebialabs/xl-docker-demo-xld:v6.0.2.1

MAINTAINER Joris De Winne <jdewinne@xebialabs.com>
ENV REFRESHED_AT 2016-12-14

RUN apk --update add openjdk8 bash libstdc++
ADD resources/command.sh /opt/xld/command.sh
VOLUME /data
VOLUME /root/.gradle
WORKDIR /data

CMD ["sh","-x","/opt/xld/command.sh"]
