FROM centos:7 as builder

WORKDIR /app

RUN yum -y update
RUN yum -y install wget
RUN wget "https://sktmetatronkrsouthshared.blob.core.windows.net/metatron-public/discovery-dist/latest/druid-0.9.1-latest-hadoop-2.7.3-bin.tar.gz"
RUN mkdir druid
RUN tar xf druid-0.9.1-latest-hadoop-2.7.3-bin.tar.gz -C /app/druid --strip-components 1

FROM centos:7

WORKDIR /app/druid

RUN useradd -r -u 1000 metatron

RUN yum -y update && \
    yum -y install java && \
    yum clean all

COPY --from=builder --chown=metatron /app/druid /app/druid
RUN mv /app/druid/var/druid /app/druid/var/druid.default