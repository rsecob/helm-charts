#!/bin/sh

wget http://mirror.dsrg.utoronto.ca/apache/maven/maven-3/3.6.2/binaries/apache-maven-3.6.2-bin.tar.gz
tar xf apache-maven-3.6.2-bin.tar.gz -C /opt
ln -s /opt/apache-maven-3.6.2 /opt/maven