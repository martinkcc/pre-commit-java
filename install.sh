#!/bin/bash
PMD_RELEASE="https://github.com/pmd/pmd/releases/download/pmd_releases/7.9.0/pmd-dist-7.9.0-bin.zip"
echo "$PMD_RELEASE"
PMD=$(echo "$PMD_RELEASE" | tr -d '%0D')
echo "$PMD"
apt-get update && apt-get install --no-install-recommends -y ca-certificates wget unzip curl bash jq
cd /opt | tr -d '/r'
wget -nc -O pmd.zip "$PMD_RELEASE" && unzip pmd.zip && rm pmd.zip && mv pmd-bin* pmd && chmod -R +x pmd
