FROM alpine:latest

LABEL maintainer="scrapedia@protonmail.com"

RUN apk add --no-cache --update su-exec privoxy

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh \
 && ln -s /usr/local/bin/docker-entrypoint.sh / # backwards compat

EXPOSE 8118

ENTRYPOINT ["docker-entrypoint.sh"]
