API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/hives"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "hive": {
      "hive_name": "Hive Two",
      "queen_type": "Russian",
      "brood_supers": 2,
      "honey_supers": 2,
      "hive_location": "Amesbury, NH"
    }
  }'

echo
