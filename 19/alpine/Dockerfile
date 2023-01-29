FROM node:19.5.0-alpine

# Set workdir
WORKDIR /app

# Preinstalled packages
RUN apk add --no-cache tini tzdata

ENTRYPOINT [ "tini", "--", "entrypoint.sh" ]
