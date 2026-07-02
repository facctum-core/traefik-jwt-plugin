FROM traefik:v2.11.0

RUN mkdir -p plugins-local/src/github.com/facctum-core/traefik-jwt-plugin
COPY . plugins-local/src/github.com/facctum-core/traefik-jwt-plugin/

RUN apk add --no-cache git && \
    mkdir -p plugins-local/src/github.com/facctum-core/traefik-correlation && \
    git clone --depth 1 https://github.com/facctum-core/traefik-correlation.git plugins-local/src/github.com/facctum-core/traefik-correlation && \
    apk del git
