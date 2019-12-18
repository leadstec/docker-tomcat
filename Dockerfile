#
# AUTHOR            Frank,H.L.Lai <frank@leadstec.com>
# DOCKER-VERSION    19.03
# Copyright         (C) 2020 LEADSTEC Solutions. All rights reserved.
#
ARG arch=
FROM leadstec/jre${arch}:11.0.4

ARG version=8.5.x
ARG build=dev
ARG major=8

# set labels
LABEL version="${version}-${build}" \
    description="Tomcat image for VCubi" \
    maintainer="Frank,H.L.Lai <frank@leadstec.com>"

# set environment variables
ENV TOMCAT_VERSION="${version}" \
    CATALINA_HOME="/var/tomcat" \
    TOMCAT_LOG_DIR="${LOG_DIR}/tomcat"

# Add the tomcat distribution and  make tomcat the owner of the extracted contents
RUN curl -fsSL http://mirrors.tuna.tsinghua.edu.cn/apache/tomcat/tomcat-${major}/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz | tar xz -C /var/ && \
    mv /var/apache-tomcat-${TOMCAT_VERSION} ${CATALINA_HOME}

# copy install/start scripts
COPY scripts /scripts
RUN bash /scripts/setup/install
RUN rm -fr /scripts/setup

#EXPOSE 8080 8443
