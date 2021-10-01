FROM golang:1.17.1-alpine3.14 as build-stage

WORKDIR /app
ENV PATH "$PATH:/usr/local/go/bin"
RUN apk add --no-cache git && \
    git clone --depth 1 https://github.com/docker-hy/material-applications.git && \
    cd /app/material-applications/example-backend && \
    go build && \
    apk del git
RUN adduser -D webuser 

FROM scratch
COPY --from=build-stage /app/material-applications/example-backend/server /backend/server
COPY --from=build-stage /etc/passwd /etc/passwd
COPY --from=build-stage /lib /lib
USER webuser
ENV PORT "8000"
ENV REQUEST_ORIGIN "http://localhost:5000"
EXPOSE 8000 
WORKDIR /backend
ENTRYPOINT ["./server"]
