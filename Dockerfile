FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/route53

FROM caddy

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

LABEL org.opencontainers.image.source https://github.com/gergnz/caddyr53
