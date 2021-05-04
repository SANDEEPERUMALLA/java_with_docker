FROM maven:3.8.1-openjdk-8
ARG JAR_FILE_NAME=default
ENV jarFile=${JAR_FILE_NAME}
WORKDIR /opt
COPY pom.xml /opt/pom.xml
COPY src/ /opt/src
RUN mvn clean package
COPY entryPoint.sh .
USER root
RUN chmod 777  entryPoint.sh
RUN chmod +x  entryPoint.sh
ENTRYPOINT ["sh", "entryPoint.sh"]
