FROM ubuntu:20.04

WORKDIR /app
RUN apt update && \
    apt install -y curl git && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash  && \
    apt update && \
    apt install -y nodejs && \
    git clone --depth 1 https://github.com/docker-hy/material-applications.git && \
    apt-get purge -y --auto-remove curl git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \ 
    useradd -m webuser && \
    chown -R webuser /app

USER webuser

WORKDIR /app/material-applications/example-frontend

ENV REACT_APP_BACKEND_URL http://localhost/api
EXPOSE 5000
USER root
RUN npm install && npm run build && npm install -g serve
    
USER webuser

ENTRYPOINT serve -s -l 5000 build

