# Dockerfile for testing build
ARG VERSION=latest
FROM ubuntu

RUN apt-get update && apt-get install --no-install-recommends -y \
    python3 \
    make \
    g++ \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /opt
COPY timePrint.py whatTime.cpp timeFile Makefile /opt/
ENV PATH="/opt:${PATH}"

RUN ["make"]

CMD ["PrintTime"]