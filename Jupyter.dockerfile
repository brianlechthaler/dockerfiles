FROM alpine:latest
ENV ADDITONAL_DEPS elasticsearch
ENV APKCMD "apk add"
ENV APKPKG "py3-virtualenv py3-pip"
RUN $APKCMD $APKPKG
RUN mkdir -p /opt/jupyter/
RUN "virtualenv /opt/jupyter/venv"
ENV PY3CMD ". /opt/jupyter/venv/activate ;"
RUN $PY3CMD pip install -U pip
RUN $PY3CMD pip install -U jupyter $ADDITIONAL_DEPS
ENTRYPOINT ["$PY3CMD", "jupyter", "notebook"]
