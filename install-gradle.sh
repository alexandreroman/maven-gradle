#!/usr/bin/env bash
set -euo pipefail

GRADLE_VERSION="8.1.1"

curl -L https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip -o /tmp/gradle.zip
rm -rf /opt/gradle /tmp/gradle
mkdir /tmp/gradle
unzip -d /tmp/gradle /tmp/gradle.zip
cd /tmp/gradle && mv gradle-${GRADLE_VERSION} /opt/gradle
