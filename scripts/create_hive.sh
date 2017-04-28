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
      "hive_location": "Amesbury, NH",
      "user_id": 1
    }
  }'

echo
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/hives"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "hive": {
      "hive_name": "Hive Ten",
      "queen_type": "Russian",
      "brood_supers": 2,
      "honey_supers": 2,
      "hive_location": "Amesbury, NH",
      "user_id": 1
    }
  }'

  API="${API_ORIGIN:-http://localhost:4741}"
  URL_PATH="/hives"
  curl "${API}${URL_PATH}" \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiU1MzcxMTlmNDhmYzY1YmQ2MGZjZWM0OTU4NDVmZTc2YQY6BkVG--98ef1fc9f4c66db475788937eec734025d190239" \
    --data '{
      "hive": {
        "hive_name": "Hive Seven",
        "queen_type": "Russian",
        "brood_supers": 2,
        "honey_supers": 2,
        "hive_location": "Amesbury, NH"
      }
    }'


    curl --include --request POST http://localhost:4741/hives \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiUyMGY1YjYzNjhkMjFkM2VkNzQ1MjNmMDJiNzljYjljNQY6BkVG--6dba2498e090d17c963f47d26f73b9be8c0e85ef" \
  --data '{
    "hive": {
      "hive_name": "Hive Seven",
      "queen_type": "Russian",
      "brood_supers": 2,
      "honey_supers": 2,
      "hive_location": "Amesbury, NH"
    }
  }'
