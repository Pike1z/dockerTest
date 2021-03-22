# Dockerfile for testing build
ARG UBUNTU_VERSION
FROM ubuntu:${UBUNTU_VERSION}

RUN apt-get update && apt-get install --no-install-recommends -y