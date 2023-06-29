FROM ubuntu:jammy AS maven
RUN apt-get update && apt-get install -y curl
COPY install-maven.sh /root
RUN /root/install-maven.sh

FROM ubuntu:jammy AS gradle
RUN apt-get update && apt-get install -y curl unzip
COPY install-gradle.sh /root
RUN /root/install-gradle.sh

FROM bellsoft/liberica-openjdk-alpine:17
COPY --from=maven /opt/apache-maven /opt/apache-maven
RUN ln -s /opt/apache-maven/bin/mvn /usr/local/bin/mvn
COPY --from=gradle /opt/gradle /opt/gradle
RUN ln -s /opt/gradle/bin/gradle /usr/local/bin/gradle
