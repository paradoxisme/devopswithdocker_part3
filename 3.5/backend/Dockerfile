FROM golang:1.17.1-alpine3.14

WORKDIR /app
ENV PATH "$PATH:/usr/local/go/bin"
RUN apk add --no-cache git && \
    git clone --depth 1 https://github.com/docker-hy/material-applications.git && \
    cd /app/material-applications/example-backend && \
    go build && \
    apk del git && \
    adduser -D webuser && \
    chown -R webuser /app

USER webuser



WORKDIR /app/material-applications/example-backend

ENV PORT "8000"
ENV REQUEST_ORIGIN "http://localhost:5000"
EXPOSE 8000 
CMD bash
