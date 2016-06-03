FROM ficusio/openresty:debian

RUN echo "==> Installing additional dependencies ..." \
    && apt-get update \
    && apt-get install -y --no-install-recommends unzip luarocks \
    && luarocks install lua-resty-libcjson \
    && luarocks install lapis

EXPOSE 8080