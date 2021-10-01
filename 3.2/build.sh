#! /bin/sh
apk add git
git clone https://github.com/paradoxisme/pipeline_to_heroku.git
cd pipeline_to_heroku
docker login -u ukulele44 -p $PASSWORD
docker build -t ukulele44/pipeline_to_heroku .
docker push ukulele44/pipeline_to_heroku
