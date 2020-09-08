FROM kalilinux/kali:latest
ENV APTCMD "apt-get install -y"
ENV APTPKG "git"
RUN apt-get update
RUN apt-get upgrade -y --no-install-recommends
ENTRYPOINT ["/bin/sh"]
