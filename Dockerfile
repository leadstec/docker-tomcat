#
# Author            Frank,H.L.Lai <frank@leadstec.com>
# Docker Version    19.03
# Website           https://www.leadstec.com
# Copyright         (C) 2020 LEADSTEC Systems. All rights reserved.
#
ARG arch=
FROM leadstec.tencentcloudcr.com/leadstec/java${arch}:11.0.8
ARG version=9.0.38
ARG build=dev

LABEL version="${version}-${build}" \
    description="Tomcat image for VCubi platform" \
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
