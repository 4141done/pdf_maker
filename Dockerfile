

FROM alpine:3.8

RUN apk add --no-cache qt5-qtwebkit qt5-qtbase bash openssl

RUN apk add \
    --repository http://dl-3.alpinelinux.org/alpine/edge/community/ \
    --allow-untrusted \
    --no-cache \
    wkhtmltopdf

RUN rm -f /var/cache/apk/*

RUN mkdir -p /opt/apps/pdf_maker

WORKDIR /opt/apps/pdf_maker

RUN WK_PATH=$(find / -name wkhtmltopdf) && \
    export PATH=$WK_PATH:$PATH

COPY _build/prod/rel/pdf_maker/releases/0.1.0/pdf_maker.tar.gz .

RUN tar zxf pdf_maker.tar.gz && \
    rm pdf_maker.tar.gz

EXPOSE 4000
ENV PORT=4000 \
  MIX_ENV=prod \
  REPLACE_OS_VARS=true \
  SHELL=/bin/sh

ENTRYPOINT ["/opt/apps/pdf_maker/bin/pdf_maker"]
CMD ["foreground"]
