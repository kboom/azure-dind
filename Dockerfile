FROM docker:19-dind

RUN \
    apk update && \
    apk add jq bash py-pip && \
    apk add --virtual=build gcc libffi-dev musl-dev openssl-dev python-dev make && \
    pip --no-cache-dir install -U pip && \
    pip --no-cache-dir install azure-cli && \
    pip --no-cache-dir install yq && \
    apk del --purge build
