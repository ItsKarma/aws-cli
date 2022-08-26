FROM python:3.9-alpine

COPY entrypoint.sh /entrypoint.sh

ENV AWSCLI_VERSION='2.2.0'

RUN pip3 --no-cache-dir install awscliv2==${AWSCLI_VERSION}

ENTRYPOINT [ "/entrypoint.sh"]
