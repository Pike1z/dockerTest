# Dockerfile for testing build
FROM scratch

RUN apt-get update && apt-get install --no-install-recommends -y