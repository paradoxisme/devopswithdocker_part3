# README

Before :
front_end                      latest              ac32c51c63c9   About an hour ago   408MB
back_end                       latest              6f77e067926a   About an hour ago   469MB

After use build step :
back_end                       latest              66f9bc1949fd   3 minutes ago       21.7MB
front_end                      latest              8dea038e9f43   46 minutes ago      124MB


## For the frontend:
I've kept the same image from the build-stage : node:16-alpine3.11
COPY --from=build-stage /app/material-applications/example-frontend/build /frontend/build
I've copied the build folder from buid-stage


## For backend
we need to copy file from the build-stage :
COPY --from=build-stage /app/material-applications/example-backend/server /backend/server
this is the application compiled
COPY --from=build-stage /etc/passwd /etc/passwd
This file allow to use the user created in build stage (webuser)
COPY --from=build-stage /lib /lib
This folder contain library needed for the application
