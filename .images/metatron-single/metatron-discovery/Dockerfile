FROM centos:7 as builder

WORKDIR /app

RUN yum -y update
RUN yum -y install git java-11-openjdk wget

COPY install_maven.sh .
RUN ./install_maven.sh

ENV JAVA_HOME=/usr/lib/jvm/jre-openjdk
ENV M2_HOME=/opt/maven
ENV MAVEN_HOME=/opt/maven
ENV PATH=${M2_HOME}/bin:${PATH}

RUN git clone https://github.com/metatron-app/metatron-discovery.git
COPY application.yaml /app/metatron-discovery/discovery-server/src/main/resources/application.yaml
COPY common.sh /app/metatron-discovery/discovery-distribution/bin/common.sh
RUN cd metatron-discovery && mvn clean install -DskipTests
RUN cd metatron-discovery/discovery-distribution/target && \
    cd $(ls -d */ | grep metatron-discovery) && \
    mv $(ls -d */ | grep metatron-discovery) /app/metatron

FROM centos:7

RUN useradd -r -u 1000 metatron

COPY --from=builder --chown=metatron /app/metatron /app/metatron-discovery

RUN yum -y update && \
    yum -y install java && \
    yum clean all