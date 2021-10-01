FROM ubuntu:20.04

WORKDIR /app
RUN apt update && apt install -y curl git && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash  && rm -rf /var/lib/apt/lists/* && useradd -m webuser && chown -R webuser /app

USER webuser

RUN git clone https://github.com/docker-hy/material-applications.git 

WORKDIR /app/material-applications/example-frontend

ENV REACT_APP_BACKEND_URL http://localhost/api
EXPOSE 5000
USER root
RUN apt update && apt install -y nodejs && node -v && npm -v && \
    rm -rf /var/lib/apt/lists/* && npm install && npm run build && npm install -g serve
    
USER webuser

ENTRYPOINT serve -s -l 5000 build

