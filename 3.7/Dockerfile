# use alpine, smaller images with openjdk
FROM openjdk:8-alpine as  builder
RUN apk add git
RUN git clone https://github.com/docker-hy/material-applications.git /app/
WORKDIR /app/spring-example-project
RUN ./mvnw package
#create user
RUN adduser -D webuser


FROM scratch
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# retrieve user file
COPY --from=builder /etc/passwd /etc/passwd
COPY --from=builder /lib /lib
COPY --from=builder /usr /usr
# retrive jar file
COPY --from=builder /app/spring-example-project/target/docker-example-1.1.3.jar /target/docker-example-1.1.3.jar
COPY --from=builder /tmp /tmp
COPY --from=builder /bin/chown /bin/chown
COPY --from=builder /bin/sh /bin/sh
# java need to write into tmp, so it need to have permission
RUN /bin/chown webuser -R /tmp
# run into webuser user for security
USER webuser
ENTRYPOINT ["java","-jar"]
CMD ["/target/docker-example-1.1.3.jar"]
