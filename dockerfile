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

ENV PATH="/root/.local/bin:${PATH}"

RUN apt-get update \
  && apt-get install -y --no-install-recommends make

# Ensure you have the necessary files in your host's current directory
COPY . /

EXPOSE 80

CMD ["tail", "-f", "/dev/null"]

