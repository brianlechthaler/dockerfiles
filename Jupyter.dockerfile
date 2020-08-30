FROM alpine:latest
ENV ADDITONAL_DEPS elasticsearch
ENV APKCMD "apk add"
ENV APKPKG "py3-pip gcc"
RUN $APKCMD $APKPKG
RUN mkdir -p /opt/jupyter/
RUN pip install -U pip
RUN pip install -U jupyter $ADDITIONAL_DEPS
ENTRYPOINT ["jupyter", "notebook"]
