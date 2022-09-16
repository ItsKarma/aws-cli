FROM python:3.9-alpine

ENV AWSCLI_VERSION='2.7.24'

RUN pip3 --no-cache-dir install awscli==${AWSCLI_VERSION}

ENTRYPOINT ["aws"]
