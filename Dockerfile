FROM alpine:latest

LABEL "com.github.actions.name"="Cloudflare CLI"
LABEL "com.github.actions.description"="CLI utility managing CloudFlare API services"
LABEL "com.github.actions.icon"="trash-2"
LABEL "com.github.actions.color"="orange"

LABEL version="1.0"
LABEL repository="https://github.com/cvc90/Cloudflare-CLI"
LABEL homepage="https://www.cvazquez.es/"
LABEL maintainer="Carlos V. <carlos@cvazquez.es>"

RUN apk update && apk add openssl curl

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
