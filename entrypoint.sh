#!/usr/bin/env sh

helm repo add chartmuseum https://${NODIS_CHART_REPOSITORY_USER}:${NODIS_CHART_REPOSITORY_PASSWORD}@${NODIS_CHART_REPOSITORY_HOST}

helm plugin install https://github.com/chartmuseum/helm-push.git

helm package .

helm push . chartmuseum
