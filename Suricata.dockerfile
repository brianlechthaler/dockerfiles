FROM alpine:latest
ENV APKCMD "apk add"
ENV APKPKG "suricata"
RUN $APKCMD $APKPKG
RUN suricata-update
ENTRYPOINT ["suricata"]
