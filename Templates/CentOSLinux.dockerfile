FROM centos:latest
ENV YUMCMD "yum install -y"
ENV YUMPKG "tor"
RUN $YUMCMD $YUMPKG
ENTRYPOINT ["/bin/sh"]
