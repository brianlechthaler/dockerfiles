FROM ubuntu:latest
ENV APTCMD "apt-get install -y"
ENV APTPKG "git"
RUN apt-get update
RUN apt-get upgrade -y --no-install-recommends
RUN $APTCMD $APTPKG
ENTRYPOINT ["/bin/sh"]
