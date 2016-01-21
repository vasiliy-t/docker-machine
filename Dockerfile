FROM alpine:3.2

ENV DRIVER=digitalocean \
    COMMAND=create \
    VMNAME=default

RUN apk --update add curl && \
        curl -L https://github.com/docker/machine/releases/download/v0.5.6/docker-machine_linux-amd64 >/usr/local/bin/docker-machine && \
        chmod +x /usr/local/bin/docker-machine && \
        apk del --purge curl && \
        rm -rf /var/cache/apk/*

COPY ./ /

CMD ["/bin/sh", "/entry.sh"]
