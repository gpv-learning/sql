FROM ubuntu:24.04

RUN apt-get update \
    && apt-get install -y curl unzip ca-certificates \
    rm -rf /var/lib/apt/lists*

RUN curl -L https://github.com/duckdb/duckdb/releases/download/v1.5.0/duckdb_cli-linux-amd64.zip -o duckdb.zip \
    && unzip duckdb.db -d /usr/local/bin/ \
    && rm duckdb.zip \
    && chmod +x /usr/local/bin/duckdb

WORKDIR /workspace

VOLUME [ "/data" ]

CMD ["duckdb", "/data/database.duckdb"]
