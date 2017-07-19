#!/usr/bin/env bash

slack_notify(){
  json_payload="{$MAIN_PAYLOAD, \"text\": \"$1 $2\"}"
curl -X POST --data-urlencode "payload=$json_payload" $WEBHOOK_URL
}
