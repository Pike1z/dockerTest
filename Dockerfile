# Dockerfile for testing build
ARG VERSION=latest
FROM ubuntu

RUN apt-get update && apt-get install --no-install-recommends -y \
    python3 \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /opt
COPY timePrint.py /opt
ENV PATH="/opt:${PATH}"

CMD ["python3", "timePrint.py"]