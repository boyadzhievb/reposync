#!/bin/bash

reposync -c /reposync/sync_centos7_k8s_repo/k8s-repo.conf \
         --repo=repo_centos7_k8s \
         --download-metadata \
         --downloadcomps \
         --newest-only \
         --arch=x86_64 \
         -p reposync/centos7

verbose=--verbose
createrepo $verbose --update /reposync/centos7/repo_centos7_k8s
