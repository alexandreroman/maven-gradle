#!/usr/bin/env bash
set -euo pipefail

MAVEN_VERSION="3.9.3"

curl -L https://dlcdn.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz -o /tmp/apache-maven.tar.gz
rm -rf /opt/apache-maven
mkdir /opt/apache-maven
tar zxfv /tmp/apache-maven.tar.gz --strip-components=1 -C /opt/apache-maven
