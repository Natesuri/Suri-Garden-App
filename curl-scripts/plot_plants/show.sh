#!/bin/bash

curl "http://localhost:4741/plot_plants/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
