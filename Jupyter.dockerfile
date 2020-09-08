FROM python:3
ENV PYTHON_DEPS elasticsearch
RUN pip install -U pip
RUN pip install -U $PYTHON_DEPS
ENTRYPOINT ["jupyter", "notebook"]
