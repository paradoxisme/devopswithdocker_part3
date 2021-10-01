FROM ubuntu:20.04

WORKDIR /app
ENV PATH "$PATH:/usr/local/go/bin"
RUN apt update && \
    apt install -y wget gcc git && \
    wget https://golang.org/dl/go1.16.5.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.16.5.linux-amd64.tar.gz &&\
    rm go1.16.5.linux-amd64.tar.gz && \
    git clone --depth 1 https://github.com/docker-hy/material-applications.git && \
    cd /app/material-applications/example-backend && \
    go build && chmod -R 777 /root/go && rm -rf /root/.cache /root/go && \
    apt-get purge -y --auto-remove wget gcc curl git && \
    apt-get autoclean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /usr/local/go && \
    useradd -m webuser && \
    chown -R webuser /app

USER webuser



WORKDIR /app/material-applications/example-backend

ENV PORT "8000"
ENV REQUEST_ORIGIN "http://localhost:5000"
EXPOSE 8000 
CMD bash
