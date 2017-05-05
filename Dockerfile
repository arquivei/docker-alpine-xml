FROM alpine
MAINTAINER Arquivei

RUN apk update && \
    apk upgrade && \
    apk add libxml2 xmlsec openssl tzdata ca-certificates

ONBUILD ARG TZ=America/Sao_Paulo
ONBUILD ENV TZ $TZ
ONBUILD RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
