#!/bin/bash
source ./config/set-proxy.sh .
source ./config/set-ado-dev.sh .

BASE_URL="https://$HOST/$ORGANIZATION/$PROJECT"
APP_="12"

curl "$BASE_URL/_apis/pipelines?api-version=7.1-preview.1" \
-u ":$PAT" \
-H "Content-Type: application/json" | json_pp >> responses/get-pipelines.json