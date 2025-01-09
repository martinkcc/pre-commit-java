FROM eclipse-temurin:17.0.6_10-jre
COPY install.sh /opt
RUN apt-get update && apt-get install --no-install-recommends -y ca-certificates wget unzip curl bash jq
RUN wget -nc -O pmd.zip https://github.com/pmd/pmd/releases/download/pmd_releases/7.9.0/pmd-dist-7.9.0-bin.zip && unzip pmd.zip && rm pmd.zip && mv pmd-bin* pmd && chmod -R +x pmd
RUN rm -rf /var/lib/apt/lists/* && rm /opt/install.sh
COPY run_pmd.sh /opt
RUN tr -d '\r' < /opt/run_pmd.sh > /opt/run_pmd.sh
