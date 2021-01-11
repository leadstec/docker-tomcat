# CHANGELOG

**2021/01/11**
* Update: Tomcat 9.0.41
* Update: Implement Github Actions for CI
* Update: Move to Docker Hub as default registry

**2020/10/04**
* Update: Tomcat 9.0.38

**8.5.35 2018-12-04**
* 更新版本
* 支持 lcs 1.6.2

**2018年5月18日**
* 更新到8.0.52
* 支持aarch64架构

**8.0.50**
* 更新2018年


**8.0.44**

* 基于alpine 3.6（LCS 1.6.0）

**8.0.44**

* 基于alpine 3.6（LCS 1.5.1）
update docker-compose to v3

**8.0.41**

* 发布到cangku.cloud
* Production Release

**8.0.39**

* 基于jre8 8u111（LCS 1.4）

**8.0.37**

* 支持LCS 1.2.0
* 开始采用openjdk8

**8.0.33**

* 支持Image Schema
* 支持LCS Tools

**8.0.24**

* Production Ready
* 基于jre:7u79及jre:8u51
* alpine:3.2.2，大幅度减小image体积

**8.0.21**

* 8.0.21-2
    - 基于jre:1.7.0.79-1
    - 删除/setup目录
* 8.0.21-1
    - 基于jre:1.7.0.79，不再用jdk
    - 基于base:0.6.0
    - 根据base:0.6的思路，简化首次启动脚本为runonce.sh
* 8.0.21-
    - 基于java:1.7.0.79，base:0.5.2
    - Tomcat升级到8.0.21

**8.0.15**

**采用Tomcat版本号**

**0.4.1**

* Based on image reg.leadstec.com/base:0.4.1 (Refer to base/0.4.1 for details)
* Remove EXPOSE ports from Dockerfile, please map ports while creating the container

**0.4**

* Combine dev and runtime into one image.
* Based on image reg.leadstec.com/base:0.4 (Refer to base/0.4 for details)

**0.3.1**

* Bug fixed on 0.3 run script about starting supervisord.

**0.3**

* Update to use supervisorctl control processes within container and prevent restart container frequently.

**0.2**

* Based on reg.leadstec.com/dev_java:0.2
* Dockerfile support up to docker version 1.2+

**0.1**

* initial image
