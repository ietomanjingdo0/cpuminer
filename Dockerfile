FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y wget tar ca-certificates && \
    wget https://github.com/rplant-pool/cpuminer-rplant/releases/download/5.0.48/cpuminer-opt-linux-5.0.48.tar.gz && \
    tar -xzf cpuminer-opt-linux-5.0.48.tar.gz && \
    chmod +x cpuminer-sse2

ENTRYPOINT ["./cpuminer-sse2"]
