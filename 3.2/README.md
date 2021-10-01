docker run --rm --env=PASSWORD=$PASSWORD -v $PWD:/app -v /var/run/docker.sock:/var/run/docker.sock -it docker /app/build.sh
