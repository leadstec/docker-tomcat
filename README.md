# Tomcat image for VCubi Platform

![Version](https://img.shields.io/badge/Tomcat-9.0.41-blue)
![Arch](https://img.shields.io/badge/amd64,_arm64-brightgreen)
![Workflow](https://github.com/leadstec/docker-tomcat/workflows/ci/badge.svg)

The project contains Tomcat image for VCubi platform, based on LCS container management daemon.

Image on [DockerHub](https://hub.docker.com/r/leadstec/tomcat)

LEADSTEC: [Official website](https://www.leadstec.com)

## How to Use

    # Pull image
    docker pull leadstec/tomcat:latest

    # Build image
    docker-compose build

    # Image Structure Test
    container-structure-test test --image leadstec/tomcat:tag --config tests/tomcat.yml

## LCS Schema & ENV, Secrets

| Variable              | Description               | Default | Type |
|-----------------------|---------------------------|---------|------|
| TOMCAT_ADMIN          |                           | admin  | Env |
| TOMCAT_ADMIN_PASSWORD |                           |        | Secret |
