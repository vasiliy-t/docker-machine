FROM alpine:3.2

ENV DRIVER=digitalocean \
    OPERATION=create

RUN apk --update add curl && \
        curl -L https://github.com/docker/machine/releases/download/v0.5.2/docker-machine_linux-amd64.zip >machine.zip && \
        unzip machine.zip && \
        rm machine.zip && \
        mv -f docker-machine* /usr/local/bin

COPY ./ /

CMD ["/bin/sh", "/entry.sh"]
