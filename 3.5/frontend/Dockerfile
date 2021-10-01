FROM node:16-alpine3.11

WORKDIR /app
RUN apk add --no-cache git && \
    git clone --depth 1 https://github.com/docker-hy/material-applications.git && \
    apk del git && \
    adduser -D webuser && \
    chown -R webuser /app

USER webuser

WORKDIR /app/material-applications/example-frontend

ENV REACT_APP_BACKEND_URL http://localhost/api
EXPOSE 5000
USER root
RUN npm install && npm run build && npm install -g serve
    
USER webuser

ENTRYPOINT serve -s -l 5000 build

