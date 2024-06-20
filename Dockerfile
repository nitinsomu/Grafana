FROM ubuntu:latest

USER root

RUN apt-get update && apt-get install -y wget tar

RUN wget https://dl.grafana.com/oss/release/grafana-11.0.0.linux-amd64.tar.gz

RUN tar -zxvf grafana-11.0.0.linux-amd64.tar.gz

WORKDIR grafana-v11.0.0

ENTRYPOINT [ "./bin/grafana-server" ]
