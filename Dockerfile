FROM python:2-alpine3.6

LABEL MAINTAINER info@viperdev.io

ENV ROOT=/opt/local/thumbor USER=thumbor PORT=8000 UID=1000

EXPOSE $PORT

RUN adduser -D -u $UID $USER

WORKDIR $ROOT

ADD requirements.txt $ROOT

RUN apk update && \
    apk upgrade && \
    apk add --update --no-cache \
        build-base \
        curl \
        curl-dev \
        zlib-dev \
        jpeg-dev \
        openssl-dev && \
    pip install --no-cache-dir -r requirements.txt && \
    apk del \
        build-base \
        curl-dev && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*

ADD . $ROOT

ENTRYPOINT ["./docker-entrypoint.sh"]
