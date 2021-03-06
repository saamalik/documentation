#!/bin/bash

api_key="<DATADOG_API_KEY>"
app_key="<DATADOG_APPLICATION_KEY>"

curl -X POST \
-H "Content-type: application/json" \
-H "Accept: application/json" \
-H "DD-API-KEY: ${api_key}" \
-H "DD-APPLICATION-KEY: ${app_key}" \
-d "{
      \"scope\": \"host:i-123\"
}" \
"https://api.datadoghq.com/api/v1/downtime/cancel/by_scope"
