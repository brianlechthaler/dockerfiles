FROM ubuntu:latest
ENV APTCMD "apt-get update ; apt-get install -y"
ENV APTPKG "tor"
RUN $APTCMD $APTPKG
ENTRYPOINT ["/bin/sh"]