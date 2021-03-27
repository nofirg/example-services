#!/usr/bin/env bash
set +e
set -x

export IMAGE_NAME=ghcr.io/invoicebox/aeroexpress-api/nginx

docker pull nginx:alpine

docker build . -t ${IMAGE_NAME}
docker push ${IMAGE_NAME}
