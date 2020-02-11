FROM docker:19-dind

RUN \
    apk update && \
    apk add jq bash py-pip && \
    apk add --virtual=build gcc libffi-dev musl-dev openssl-dev python-dev make && \
    pip --no-cache-dir install -U pip && \
    pip --no-cache-dir install azure-cli && \
    apk del --purge build
    
RUN wget -O /usr/local/bin/yq https://github.com/mikefarah/yq/releases/download/2.4.1/yq_linux_amd64 && chmod +x /usr/local/bin/yq
