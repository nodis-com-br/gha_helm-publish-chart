#!/usr/bin/env sh

helm repo add chartmuseum https://${NODIS_CHART_REPOSITORY_USER}:${NODIS_CHART_REPOSITORY_PASS}@${NODIS_CHART_REPOSITORY_HOST}

helm package .

helm push .
