FROM python:3-alpine

ENV AWSCLI_VERSION='1.17.0'

LABEL "version"="${AWSCLI_VERSION}"
LABEL "com.github.actions.name"="AWS CLI"
LABEL "com.github.actions.description"="GitHub Action for AWS CLI"
LABEL "com.github.actions.icon"="cloud"
LABEL "com.github.actions.color"="green"

RUN apk -v --update add \
        groff \
        && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

VOLUME /root/.aws
VOLUME /project
WORKDIR /project

ENTRYPOINT ["aws"]
