FROM xebialabs/xl-docker-demo-xld:v5.5.3.1

MAINTAINER Joris De Winne <jdewinne@xebialabs.com>
ENV REFRESHED_AT 2016-10-17

RUN apt-get update && apt-get install -y openjdk-8-jdk
ADD resources/command.sh /opt/xld/command.sh
VOLUME /data
VOLUME /root/.gradle
WORKDIR /data

CMD ["sh","-x","/opt/xld/command.sh"]