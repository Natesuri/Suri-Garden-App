#!/bin/bash

curl "http://localhost:4741/plots" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "plot": {
      "name": "'"${NAME}"'",
      "size": "'"${SIZE}"'",
      "brightness": "'"${BRIGHTNESS}"'",
      "climate": "'"${CLIMATE}"'",
      "notes": "'"${NOTES}"'"
    }
  }'

echo
