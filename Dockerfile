FROM traefik:v2.11.0

RUN mkdir -p plugins-local/src/github.com/facctum-core/traefik-jwt-plugin

COPY . plugins-local/src/github.com/facctum-core/traefik-jwt-plugin/
