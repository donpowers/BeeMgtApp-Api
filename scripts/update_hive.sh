API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/hives/3"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "hive": {
      "hive_name": "Hive Ten",
      "honey_supers": 5
    }
  }'
  API="${API_ORIGIN:-http://localhost:4741}"
  URL_PATH="/hives/1"
  curl "${API}${URL_PATH}" \
    --include \
    --request PATCH \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=$TOKEN" \
    --data '{
      "hive": {
        "hive_name": "Hive Five"
      }
    }'
