FROM amd64/python:3.8-slim-buster

WORKDIR /

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
  apt-utils \
  build-essential \
  git \
  wget \
  ca-certificates \
  g++ \
  gcc \
  && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y --no-install-recommends sudo

RUN pip install qmk

RUN qmk setup -y

ENV PATH="/root/.local/bin:${PATH}"

RUN apt-get update \
  && apt-get install -y --no-install-recommends make

COPY . /

EXPOSE 80

CMD bash
