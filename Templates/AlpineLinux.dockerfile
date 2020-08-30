FROM alpine:latest
ENV APKCMD "apk add"
ENV APKPKG "tor"
RUN $APKCMD $APKPKG
ENTRYPOINT ["/bin/sh"]
