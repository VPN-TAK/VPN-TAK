FROM alpine:latest
RUN apk add --no-cache ca-certificates curl bash
WORKDIR /app
RUN curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh | bash
EXPOSE 2083 443 80 8443
CMD ["/etc/x-ui/x-ui", "run"]
