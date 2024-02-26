<!--
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
#                                                           #
#  888888 8888888              88 8888888                   #
#    88   88                   88 88    oo                  #
#    88   88                   88 88                        #
#    88   88888 .d8b.   .d8b.  88 88888 88 8888b.  .d8b.    #
#    88   88   d8P Y8b d8P Y8b 88 88    88 88  8b d8P Y8b   #
#    88   88   8888888 8888888 88 88    88 88  88 8888888   #
#    88   88   Y8b.    Y8b.    88 88    88 88  88 Y8b.      #
#  888888 88    ºY888P  ºY888P 88 88    88 88  88  ºY888P   #
#                           (c) 2015-2024 I Feel Fine, Inc. #
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
# README.md
# Github Repo: <ifeelfine/sonic>
# -------------
# Description: 
# Main readme file
-->
# Kubernetes Sonic Screwdriver

This project provides an immutable container image used to troubleshoot Kubernetes, Podman, or Docker pods.
The container may be deployed as its own pod, or by attaching to an existing pod.

> [!CAUTION]
> _The kubeconfig file generated here is only usable with_ [Oracle Cloud Infrastructure](https://oracle.com/cloud "Oracle Cloud")_'s_ [Container Engine for Kubernetes (OKE)](https://www.oracle.com/cloud/cloud-native/container-engine-kubernetes/ "Container Engine for Kubernetes (OKE)")_._  
> _If you are using a different cloud provider or self-hosted cluster, you will need to adjust the_ [`/root/.kube/config`](/kubeconfig.yaml) _file accordingly._
> _There are many tools to help but such configuration is outside the scope of this project._

## Prerequisites

- [X] Up to date Oracle Cloud Kubernetes Cluster

## Usage

Build container image with 

```shell
$ docker build \
    --build-arg OS_VERSION=3.19    \
    --build-arg KC_VERSION=1.28.2  \
    --build-arg BUILD_DATE=$(date) \
    --build-arg VERSION='v0.1-OS_${OS_VERSION}-K8S_${KC_VERSION}' \
    --platform linux/amd64,linux/arm64 \
    -t ifeelfine/sonic:latest \
    -t ifeelfine/sonic:0.1
```

docker build --build-arg ALPINE_VERSION=3.14 --build-arg KUBECTL_VERSION=v1.23.2 --platform linux/amd64,linux/arm64 -t your_image_name .
