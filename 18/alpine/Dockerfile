# TAGS: hydrogen
# VARIANT: alpine
# PLATFORMS: linux/amd64, linux/arm64/v8, linux/arm/v7, linux/arm/v6, linux/ppc64le, linux/s390x
FROM node:18.20.4-alpine

# Set workdir
WORKDIR /app

# Preinstalled packages
RUN apk add --no-cache tini tzdata

ENTRYPOINT [ "tini", "--", "docker-entrypoint.sh" ]
