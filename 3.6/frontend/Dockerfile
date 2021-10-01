FROM node:16-alpine3.11 as build-stage

WORKDIR /app
RUN apk add --no-cache git && \
    git clone --depth 1 https://github.com/docker-hy/material-applications.git && \
    apk del git
WORKDIR /app/material-applications/example-frontend
ENV REACT_APP_BACKEND_URL http://localhost/api
RUN npm install && npm run build && npm install -g serve

FROM node:16-alpine3.11
COPY --from=build-stage /app/material-applications/example-frontend/build /frontend/build
RUN adduser -D webuser && chown -R webuser /frontend && npm install -g serve
WORKDIR /frontend
EXPOSE 5000
ENTRYPOINT serve -s -l 5000 build
