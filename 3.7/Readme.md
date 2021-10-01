# Optimization

### spring before optimization
spring                                        latest              84830cce07b5        21 seconds ago      602MB

### sprint after optimisation
spring                                        latest              5735fb1f7f9d        6 minutes ago       137MB

### Action done
- use alpine image for building jar file
- create user for security
- create a second stage from scratch for reduce the size (keep the minimum needed)
- set permission for tmp folder

# For building the image :
```
dam@dam:~/Bureau/devopswithdocker/1.11_Spring$ docker build -t spring .
```

# For running the image:

```
dam@dam:~/Bureau/devopswithdocker/1.11_Spring$ docker run -p 8080:8080 --rm -it spring

  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
 :: Spring Boot ::        (v2.1.3.RELEASE)

2021-06-27 19:51:08.490  INFO 1 --- [           main] c.d.dockerexample.DemoApplication        : Starting DemoApplication v1.1.3 on 3c9ea7d6194d with PID 1 (/app/target/docker-example-1.1.3.jar started by root in /app)
2021-06-27 19:51:08.493  INFO 1 --- [           main] c.d.dockerexample.DemoApplication        : No active profile set, falling back to default profiles: default
2021-06-27 19:51:09.531  INFO 1 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat initialized with port(s): 8080 (http)
2021-06-27 19:51:09.563  INFO 1 --- [           main] o.apache.catalina.core.StandardService   : Starting service [Tomcat]
2021-06-27 19:51:09.564  INFO 1 --- [           main] org.apache.catalina.core.StandardEngine  : Starting Servlet engine: [Apache Tomcat/9.0.16]
2021-06-27 19:51:09.573  INFO 1 --- [           main] o.a.catalina.core.AprLifecycleListener   : The APR based Apache Tomcat Native library which allows optimal performance in production environments was not found on the java.library.path: [/usr/java/packages/lib/amd64:/usr/lib64:/lib64:/lib:/usr/lib]
2021-06-27 19:51:09.633  INFO 1 --- [           main] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring embedded WebApplicationContext
2021-06-27 19:51:09.633  INFO 1 --- [           main] o.s.web.context.ContextLoader            : Root WebApplicationContext: initialization completed in 1097 ms
2021-06-27 19:51:09.820  INFO 1 --- [           main] o.s.s.concurrent.ThreadPoolTaskExecutor  : Initializing ExecutorService 'applicationTaskExecutor'
2021-06-27 19:51:09.945  INFO 1 --- [           main] o.s.b.a.w.s.WelcomePageHandlerMapping    : Adding welcome page template: index
2021-06-27 19:51:10.104  INFO 1 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat started on port(s): 8080 (http) with context path ''
2021-06-27 19:51:10.108  INFO 1 --- [           main] c.d.dockerexample.DemoApplication        : Started DemoApplication in 1.952 seconds (JVM running for 2.334)
2021-06-27 19:51:13.458  INFO 1 --- [nio-8080-exec-1] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring DispatcherServlet 'dispatcherServlet'
2021-06-27 19:51:13.458  INFO 1 --- [nio-8080-exec-1] o.s.web.servlet.DispatcherServlet        : Initializing Servlet 'dispatcherServlet'
2021-06-27 19:51:13.463  INFO 1 --- [nio-8080-exec-1] o.s.web.servlet.DispatcherServlet        : Completed initialization in 5 ms

Open firefox to http://127.0.0.1:8080 and press on the button
```
