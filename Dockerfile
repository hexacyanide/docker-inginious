FROM ubuntu:16.04

RUN \
  apt-get update && \
  apt-get install -y git mongodb gcc tidy python3 python3-pip python3-dev libzmq-dev

RUN \
  pip3 install --upgrade pip && \
  pip3 install --upgrade git+https://github.com/hexacyanide/INGInious.git

RUN \
  pip3 install uwsgi

WORKDIR /inginious

RUN mkdir tasks/

ENTRYPOINT ["inginious-webapp", "--host=0.0.0.0"]
