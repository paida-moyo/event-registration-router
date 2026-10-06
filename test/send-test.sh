#!/usr/bin/env bash
# Sends the sample payload to your n8n webhook.
# Usage: ./test/send-test.sh "https://your-n8n-instance/webhook-test/event-registrations"

if [ -z "$1" ]; then
  echo "Please pass your webhook URL as the first argument."
  exit 1
fi

curl -X POST "$1" \
  -H "Content-Type: application/json" \
  -d @"$(dirname "$0")/../sample-data/sample-payload.json"
