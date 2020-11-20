FROM ubuntu:latest
RUN apt update && apt install wget -y && wget https://github.com/badaix/snapcast/releases/download/v0.22.0/snapserver_0.22.0-1_amd64.deb && apt install ./snapserver_0.22.0-1_amd64.deb -y && rm snapserver_0.22.0-1_amd64.deb
EXPOSE 1704 1705 1780
ENTRYPOINT ["snapserver", "-c", "snapserver.conf"]
