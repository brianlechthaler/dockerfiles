FROM archlinux:latest
ENV PACCMD "pacman -Syyu --noconfirm"
ENV PACPKG "tor"
RUN $PACCMD $PACPKG
ENTRYPOINT ["/bin/sh"]
