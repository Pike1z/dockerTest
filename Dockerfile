# Dockerfile for testing build
ARG VERSION=latest
FROM alpine:$VERSION as builder

RUN apk add --update \
    python3 \
    make \
    g++ \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt

COPY timePrint.py whatTime.cpp timeFile Makefile /opt/
ENV PATH="/opt:${PATH}"

RUN ["make"]

FROM python:3.7.10-alpine3.12 as runner

RUN apk add --no-cache libstdc++

WORKDIR /opt

COPY --from=builder /opt/timeFile /opt/timePrint.py /opt/PrintTime /opt/
ENV PATH="/opt:${PATH}"

CMD ["PrintTime"]