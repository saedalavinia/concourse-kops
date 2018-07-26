# Kops Deployment using Concourse CI
Automating Kubernetes Deployments to AWS using kops and concourse pipeline

## Overview
This repository helps you deploy a Kubernetes cluster in AWS using [kops](https://github.com/kubernetes/kops/tree/master/docs). 
All you need is a runnning Concourse Server.

## Getting Started

``bash
fly -t <target> sp -p <pipeline-name> -c concourse/pipelines/kops_pipeline.yml \ 
                                      -v 
``
