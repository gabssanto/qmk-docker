FROM amd64/python:3.8-slim-buster

WORKDIR /app

ADD . /app

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
  apt-utils \
  build-essential \
  git \
  python3-pip \
  wget \
  ca-certificates \
  g++ \
  gcc \
  && rm -rf /var/lib/apt/lists/*

ENV PATH="/root/.local/bin:${PATH}"

RUN apt-get update \
  && apt-get install -y --no-install-recommends make

EXPOSE 80

CMD ["bash", "/app/start.sh"]
