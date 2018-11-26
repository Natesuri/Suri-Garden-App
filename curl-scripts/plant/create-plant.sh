#!/bin/bash

curl "http://localhost:4741/plants" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "plant": {
      "name": "'"${NAME}"'",
      "type": "'"${TYPE}"'",
      "size": "'"${SIZE}"'",
      "care_instructions": "'"${CARE}"'",
      "water_frequency": "'"${WATER}"'",
      "harvest_frequency": "'"${HARVEST}"'",
      "ideal_climate": "'"${CLIMATE}"'",
      "ideal_brightness": "'"${BRIGHTNESS}"'",
      "impossible_climate": "'"${BAD_CLIMATE}"'",
      "impossible_brightness": "'"${BAD_BRIGHTNESS}"'"
    }
  }'

  # TOKEN= NAME="" TYPE="" SIZE= CARE="" WATER= HARVEST= CLIMATE="" BRIGHTNESS="" BAD_CLIMATE="" BAD_BRIGHTNESS="" sh curl-scripts/plant/create-plant.sh

echo
