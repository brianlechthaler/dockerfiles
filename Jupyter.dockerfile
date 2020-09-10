FROM python:3
ENV PYTHON_DEPS elasticsearch jupyter
RUN pip install -U pip
RUN pip install -U $PYTHON_DEPS
ENTRYPOINT ["/usr/bin/python3", "-m", "jupyter", "notebook"]
