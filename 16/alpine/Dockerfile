FROM node:16.19.0-alpine

# Set workdir
WORKDIR /app

# Preinstalled packages
RUN apk add --no-cache tini tzdata

ENTRYPOINT [ "tini", "--", "entrypoint.sh" ]
