FROM traefik:v2.11.0

RUN mkdir -p plugins-local/src/github.com/facctum-core/traefik-jwt-plugin
COPY . plugins-local/src/github.com/facctum-core/traefik-jwt-plugin/

RUN apk add --no-cache git && \
    mkdir -p plugins-local/src/github.com/killer-djon/traefik-correlation && \
    git clone --depth 1 --branch v1.3.0 https://github.com/killer-djon/traefik-correlation.git plugins-local/src/github.com/killer-djon/traefik-correlation \
    sed -i 's/DEFAULT_HEADER_NAME = "correlation-id"/DEFAULT_HEADER_NAME = "x-correlation-id"/' \
    plugins-local/src/github.com/killer-djon/traefik-correlation/correlation.go && \
    apk del git


 