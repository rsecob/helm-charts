FROM centos:7 as builder

WORKDIR /app

RUN yum -y update
RUN yum -y install wget
RUN wget "https://sktmetatronkrsouthshared.blob.core.windows.net/metatron-public/discovery-dist/latest/druid-0.9.1-latest-hadoop-2.7.3-bin.tar.gz"
RUN tar -zxf druid-0.9.1-latest-hadoop-2.7.3-bin.tar.gz
RUN ln -s druid-0.9.1-SNAPSHOT.201907251104-hadoop-2.7.3 druid

FROM centos:7

WORKDIR /app/druid

RUN useradd -r -u 1000 metatron

RUN yum -y update && \
    yum -y install java && \
    yum clean all

COPY --from=builder --chown=metatron /app/druid /app/druid
RUN mv /app/druid/var/druid /app/druid/var/druid.default