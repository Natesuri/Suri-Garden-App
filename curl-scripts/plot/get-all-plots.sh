#!/bin/bash

curl "http://localhost:4741/plots" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
