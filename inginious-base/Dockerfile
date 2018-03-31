FROM ubuntu:16.04

RUN \
  apt-get update && \
  apt-get install -y --no-install-recommends \
    git gcc tidy python3 python3-pip python3-dev python3-setuptools libzmq-dev

RUN \
  pip3 install --upgrade pip && \
  pip3 install --upgrade git+https://github.com/hexacyanide/INGInious.git

WORKDIR /inginious

ENV INGINIOUS_WEBAPP_CONFIG "/inginious/configuration.yaml"
ENV INGINIOUS_WEBAPP_HOST "0.0.0.0"
ENV INGINIOUS_WEBAPP_PORT "8080"

ENTRYPOINT ["inginious-webapp"]

EXPOSE 8080/tcp
