ARG xld_tag
FROM xebialabs/xl-docker-demo-xld:$xld_tag

MAINTAINER XebiaLabs <info@xebialabs.com>

ADD resources/command.sh /opt/xld/command.sh
VOLUME /data
VOLUME /root/.gradle
WORKDIR /data

CMD ["sh","-x","/opt/xld/command.sh"]
