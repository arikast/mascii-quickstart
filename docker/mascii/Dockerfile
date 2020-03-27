FROM anapsix/alpine-java:8
MAINTAINER Ari <ari@mascii.org>

ARG MASCII_VERSION=2.0.0 
ARG MASCII_JAR=mascii-${MASCII_VERSION}.jar
ENV CLASSPATH .:/${MASCII_JAR}:$CLASSPATH

COPY ./bin/${MASCII_JAR} /
RUN chmod +r /${MASCII_JAR}

## to use: at runtime mount your source file or dir as -v my-source-dir:/mascii-files
#ENTRYPOINT ["java", "-jar", "mascii-2.0.0.jar", "-c", "-r", "/mascii-files"]
ENTRYPOINT ["java", "-jar", "mascii-2.0.0.jar", "-c", "-r"]
