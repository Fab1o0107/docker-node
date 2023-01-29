FROM node:16.19.0-alpine

# Set workdir
WORKDIR /tmp/build

# Install node-gyp dependencies
RUN apk add --no-cache build-base git python3 tini

# Link python to python3
RUN ln -s /usr/bin/python3 /usr/local/bin/python

# Set jobs to max in npm global config
RUN mkdir -p /usr/local/etc \
    && touch /usr/local/etc/npmrc \
    && echo "jobs=max" >> /usr/local/etc/npmrc

ENTRYPOINT [ "tini", "--", "entrypoint.sh" ]
