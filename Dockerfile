FROM localhost:5000/irvui/ts-docs-service:latest
MAINTAINER Hari Mukkapati <harikrishna.mukkapati@verizon.com>

COPY config.yml /opt/docservice/

WORKDIR /opt/docservice

USER tspace

RUN rm -r docs
RUN mkdir docs && ./start.sh

ENV NODE_ENV=

ENV HOST=0.0.0.0

EXPOSE  3100

CMD ["node", "index.js"]

