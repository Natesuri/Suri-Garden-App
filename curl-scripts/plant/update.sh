#!/bin/bash

curl "http://localhost:4741/plants/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "plant": {
      "name": "'"${NAME}"'",
      "plant_type": "'"${PLANT_KIND}"'",
      "care_instructions": "'"${CARE}"'",
      "ideal_brightness": "'"${BRIGHTNESS}"'"
    }
  }'

echo
