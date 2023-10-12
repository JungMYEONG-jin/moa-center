FROM openjdk:17
EXPOSE 8761
RUN mkdir /app
VOLUME /app
COPY ./project-application/build/libs/*.jar /eureka/app.jar
#ENV JAVA_TOOL_OPTIONS -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:8080
#ENV USE_PROFILE prod
ENTRYPOINT ["java", "-jar", "/eureka/app.jar"]