FROM node:18.13.0-bullseye-slim

# Set workdir
WORKDIR /app

# Preinstalled packages
RUN apt-get update \
    && apt-get install -y --no-install-recommends iputils-ping procps tini tzdata \
    && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
    && apt-get autoremove -y \
    && apt-get autoclean -y \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "tini", "--", "entrypoint.sh" ]
