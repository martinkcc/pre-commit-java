FROM eclipse-temurin:17.0.6_10-jre
COPY install.sh /opt
RUN apt-get update && apt-get install --no-install-recommends -y ca-certificates wget unzip curl bash jq
RUN bash /opt/install.sh && rm -rf /var/lib/apt/lists/* && rm /opt/install.sh
COPY run_pmd.sh /opt
