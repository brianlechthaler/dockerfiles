FROM alpinelinux:latest
ENV APKCMD "apk add"
ENV APKPKG "py3-virtualenv py3-pip"
RUN $APKCMD $APKPKG
RUN mkdir -p /opt/jupyter/
RUN "virtualenv /opt/jupyter/venv"
ENV PY3CMD ". /opt/jupyter/venv/activate ;"
RUN $PY3CMD pip install -U pip
RUN $PY3CMD pip install -U jupyter
ENTRYPOINT ["$PY3CMD", "jupyter", "notebook"]
