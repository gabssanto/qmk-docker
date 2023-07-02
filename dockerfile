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
  && apt-get install -y --no-install-recommends --allow-downgrades \
  libc6=2.28-10+deb10u1 \
  libc-dev-bin=2.28-10+deb10u1 \
  && rm -rf /var/lib/apt/lists/*

RUN apt-get update \
  && apt-get install -y --no-install-recommends make

EXPOSE 80

CMD ["python", "app.py"]
