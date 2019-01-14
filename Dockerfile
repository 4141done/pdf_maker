## NOTE: This Dockerfile depends on the output from CircleCI, thus it is not very portable,
## but it is efficient :-)

FROM ciroque/erlang-alpine3.8:with-wkhtmltopdf

RUN MKDIR /opt/apps/pdf_maker

WORKDIR /opt/apps/pdf_maker

COPY ./_build/prod/rel/pdf_maker .
