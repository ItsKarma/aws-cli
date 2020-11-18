FROM python:3-alpine

COPY entrypoint.sh /entrypoint.sh

ENV AWSCLI_VERSION='1.17.0'

RUN pip3 --no-cache-dir install awscli==${AWSCLI_VERSION}

ENTRYPOINT [ "/entrypoint.sh"]
