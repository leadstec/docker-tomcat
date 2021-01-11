#
# Author            Frank,H.L.Lai <frank@leadstec.com>
# Docker Version    20.10
# Website           https://www.leadstec.com
# Copyright         (C) 2021 LEADSTEC Systems. All rights reserved.
#
FROM leadstec/java:11
ARG version=

LABEL description="Tomcat image for VCubi platform" \
    maintainer="Frank,H.L.Lai <frank@leadstec.com>"

# set environment variables
ENV TOMCAT_VERSION="${version}" \
    CATALINA_HOME="/var/tomcat" \
    TOMCAT_LOG_DIR="${LOG_DIR}/tomcat"

# Add the tomcat distribution and  make tomcat the owner of the extracted contents
RUN curl -LfsS http://mirrors.tuna.tsinghua.edu.cn/apache/tomcat/tomcat-`echo ${version} | cut -d'.' -f 1`/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz | tar xz -C /var/ && \
    mv /var/apache-tomcat-${TOMCAT_VERSION} ${CATALINA_HOME}

# copy install/start scripts
COPY scripts /scripts
RUN bash /scripts/setup/install
RUN rm -fr /scripts/setup

#EXPOSE 8080 8443
