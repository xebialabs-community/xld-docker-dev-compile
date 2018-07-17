ARG xld_tag
FROM xebialabs/xl-deploy:$xld_tag

MAINTAINER XebiaLabs <info@xebialabs.com>

ADD resources/command.sh /opt/xld/command.sh
VOLUME /data
VOLUME /root/.gradle
WORKDIR /data

USER root
ENTRYPOINT ["sh","-x","/opt/xld/command.sh"]
