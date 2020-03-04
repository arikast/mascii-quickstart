FROM anapsix/alpine-java:8
MAINTAINER Ari <ari@mascii.org>

ENV MASCII_VERSION 2.0.0 
ENV MASCII_JAR mascii-${MASCII_VERSION}.jar
ENV CLASSPATH .:/${MASCII_JAR}:$CLASSPATH

COPY ../../bin/${MASCII_JAR} /
RUN chmod +r /${MASCII_JAR}

## to use: at runtime mount your source file or dir as -v my-source-dir:/mascii-files
ENTRYPOINT ["java", "-jar", "$MASCII_JAR", "-c", "-r", "/mascii-files"]
