FROM debian:stable-slim

WORKDIR /app

COPY run.sh /app/run.sh

RUN apt-get update && apt-get install -y bash coreutils && rm -rf /var/lib/apt/lists/* \
    && chmod +x /app/run.sh

ENTRYPOINT ["/app/run.sh"]
