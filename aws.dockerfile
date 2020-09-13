FROM alpine:edge
RUN apk update
RUN apk upgrade
RUN apk add py3-pip
RUN pip install -U pip
RUN pip install -U boto3
RUN pip install -U ipython
RUN echo "Don't forget to set the following environment variables:" && echo "AWS_SECRET_ACCESS_KEY AWS_ACCESS_KEY_ID and AWS_DEFAULT_REGION (as applicable)"
ENTRYPOINT ["ipython"]
