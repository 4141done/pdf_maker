## NOTE: This Dockerfile depends on the output from CircleCI, thus it is not very portable,
## but it is efficient :-)

FROM elixir:1.7-alpine

RUN apk add --no-cache qt5-qtwebkit qt5-qtbase bash

RUN apk add \
    --repository http://dl-3.alpinelinux.org/alpine/edge/community/ \
    --allow-untrusted \
    --no-cache \
    wkhtmltopdf

RUN mkdir -p /opt/apps/pdf_maker

WORKDIR /opt/apps/pdf_maker

COPY _build/prod/rel/pdf_maker .

EXPOSE 4000

ENTRYPOINT ["bin/pdf_maker", "foreground"]
