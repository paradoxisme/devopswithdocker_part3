FROM ubuntu:20.04

WORKDIR /app
RUN apt update && apt install -y wget gcc git && wget https://golang.org/dl/go1.16.5.linux-amd64.tar.gz && \
    rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.5.linux-amd64.tar.gz &&\
    rm go1.16.5.linux-amd64.tar.gz && useradd -m webuser && chown -R webuser /app

USER webuser

RUN git clone https://github.com/docker-hy/material-applications.git

ENV PATH "$PATH:/usr/local/go/bin"

WORKDIR /app/material-applications/example-backend

ENV PORT "8000"
ENV REQUEST_ORIGIN "http://localhost:5000"
EXPOSE 8000
RUN go build
CMD bash
