FROM debian:stable-slim

COPY gutenberg /usr/local/bin/gutenberg

ENTRYPOINT ["/usr/local/bin/gutenberg"]
