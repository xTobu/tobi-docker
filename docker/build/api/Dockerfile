FROM golang:1.12.1 as builder
WORKDIR /root/go
COPY . .
RUN go build -o ApiServer -ldflags "-X main.ENV=production"


FROM debian:9-slim as stage
WORKDIR /root/
COPY --from=builder ./root/go/ApiServer ./
COPY --from=builder ./root/go/config ./config/

EXPOSE 8888

CMD ["/root/ApiServer"]