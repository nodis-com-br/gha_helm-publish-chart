FROM alpine/helm

RUN apk add git

RUN helm plugin install https://github.com/chartmuseum/helm-push.git

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]