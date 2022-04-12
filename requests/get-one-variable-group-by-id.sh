#!/bin/bash
source ./config/set-proxy.sh .
source ./config/set-ado-dev.sh .

BASE_URL="https://$HOST/$ORGANIZATION/$PROJECT"
VARIABLE_GROUP_ID="12"

curl "$BASE_URL/_apis/distributedtask/variablegroups/$VARIABLE_GROUP_ID" \
-u ":$PAT" \
-H "Content-Type: application/json" 