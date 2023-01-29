FROM node:16.19.0-bullseye-slim

# Set workdir
WORKDIR /tmp/build

# Install node-gyp dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends build-essential git python3 python-is-python3 tini \
    && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
    && apt-get autoremove -y \
    && apt-get autoclean -y \
    && rm -rf /var/lib/apt/lists/*

# Set jobs to max in npm global config
RUN mkdir -p /usr/local/etc \
    && touch /usr/local/etc/npmrc \
    && echo "jobs=max" >> /usr/local/etc/npmrc

ENTRYPOINT [ "tini", "--", "entrypoint.sh" ]
