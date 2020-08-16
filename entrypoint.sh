#!/usr/bin/env sh

helm repo add chartmuseum https://${CHART_REPOSITORY_USER}:${CHART_REPOSITORY_PASS}@{CHART_REPOSITORY_HOST}

helm package .

helm push .
