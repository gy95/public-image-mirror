#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail
set -x

# 先安装skopeo
src_image="k8s.gcr.io/pause:3.2"
dst_image="docker.io/guoyao95/pause:3.2"
skopeo copy --retry-times 5 --all "docker://${src_image}" "docker://${dst_image}"