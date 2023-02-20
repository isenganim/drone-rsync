FROM alpine:3.16

RUN apk add --no-cache --update ca-certificates bash openssh-client rsync
COPY upload.sh /usr/local/

ENTRYPOINT ["/usr/local/upload.sh"]
