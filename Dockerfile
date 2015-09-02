FROM java:8
RUN useradd --system --shell /usr/sbin/nologin --home-dir /nonexistent ms
USER ms
EXPOSE 8080 8000
CMD java $MS_JAVA_OPTS -jar /ms/microservice.jar
