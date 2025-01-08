#!/bin/bash
PMD_RELEASE="https://github.com/pmd/pmd/releases/download/pmd_releases/7.9.0/pmd-dist-7.9.0-bin.zip"
PMD_RELEASE=$(echo $PMD_RELEASE|tr -d '\r')
CHECKSTYLE_RELEASE="https://github.com/checkstyle/checkstyle/releases/download/checkstyle-10.21.1/checkstyle-10.21.1-all.jar"
CHECKSTYLE_RELEASE=$(echo $CHECKSTYLE_RELEASE|tr -d '\r')
apt-get update && apt-get install --no-install-recommends -y ca-certificates wget unzip curl bash jq
cd /opt | tr -d '\r
wget -nc -O "$PMD_RELEASE" | tr -d '\r > pmd.zip && unzip pmd.zip && rm pmd.zip && mv pmd-bin* pmd && chmod -R +x pmd
wget -nc -O "$CHECKSTYLE_RELEASE" | tr -d '\r > checkstyle.jar
