#!/bin/sh

wget https://www-us.apache.org/dist/maven/maven-3/3.6.0/binaries/apache-maven-3.6.0-bin.tar.gz
tar xf apache-maven-3.6.0-bin.tar.gz -C /opt
ln -s /opt/apache-maven-3.6.0 /opt/maven