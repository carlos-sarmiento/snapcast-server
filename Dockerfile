FROM alpine:latest
RUN apk --no-cache add snapcast-server
EXPOSE 1704 1705 1780
ENTRYPOINT ["snapserver"]
