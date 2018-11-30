#!/bin/bash

curl "http://localhost:4741/plot_plants" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "plot_plant": {
      "plot_id": "'"${PLOT}"'",
      "plant_id": "'"${PLANT}"'"
    }
  }'

# TOKEN= PLOT= PLANT= sh curl-scripts/plot_plants/create.sh

echo
