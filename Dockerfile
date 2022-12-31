FROM alpine:3.16@sha256:b95359c2505145f16c6aa384f9cc74eeff78eb36d308ca4fd902eeeb0a0b161b
RUN apk add --no-cache lua5.3 lua-filesystem lua-lyaml lua-http
COPY fetch-latest-releases.lua /usr/local/bin
VOLUME /out
ENTRYPOINT [ "/usr/local/bin/fetch-latest-releases.lua" ]
