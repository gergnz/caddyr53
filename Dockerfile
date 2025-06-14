FROM caddy:builder AS builder

RUN xcaddy build v2.9.1 \
    --with github.com/caddy-dns/route53@v1.5.0

FROM caddy

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
