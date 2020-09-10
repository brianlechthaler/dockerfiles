FROM python:3
ENV PYTHON_DEPS elasticsearch jupyter
RUN pip install -U pip
RUN pip install -U $PYTHON_DEPS
ENTRYPOINT ["jupyter", "notebook", "--ip=127.0.0.1", "--allow-root", "--no-browser", "-y", "--autoreload", "--log-level=info" ]
