FROM centos:latest
ENV YUMCMD "yum install -y"
ENV YUMPKG "tor"
ENTRYPOINT ["/bin/sh"]
