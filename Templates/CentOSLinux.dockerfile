FROM centos:latest
ENV YUMCMD "yum install -y"
ENV YUMPKG "git"
RUN $YUMCMD $YUMPKG
ENTRYPOINT ["/bin/sh"]
