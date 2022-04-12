#!/bin/bash
source ./config/set-proxy.sh .
source ./config/set-ado-dev.sh .

BASE_URL="https://$HOST/$ORGANIZATION/$PROJECT"
VARIABLE_GROUP_ID="12"

curl -X POST "$BASE_URL/_apis/build/builds?api-version=5.0" \
-u ":$PAT" \
-H "Content-Type: application/json" \
--data @./bodies/SAMPLE.pipeline.json | json_pp >> responses/trigger-ado-pipeline.json