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
  URL_PATH="/hives/"
  curl "${API}${URL_PATH}" \
    --include \
    --request PATCH \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiUyMGY1YjYzNjhkMjFkM2VkNzQ1MjNmMDJiNzljYjljNQY6BkVG--6dba2498e090d17c963f47d26f73b9be8c0e85ef" \
    --data '{
      "hive": {
        "hive_name": "Hive Patch"
      }
    }'

    API="${API_ORIGIN:-http://localhost:4741}"
    URL_PATH="/my-hives"
    curl "${API}${URL_PATH}/$ID" \
      --include \
      --request GET \
      --header "Authorization: Token token=BAhJIiU2MWE3MTI0MzFlYjU1ZmEwYzRiMTg3NzM0YWY3ZTIyNAY6BkVG--49ef5fc1d2388925575d4ce3e86b4b44eb20d1cc"

      API="${API_ORIGIN:-http://localhost:4741}"
      URL_PATH="/hives/1"
      curl "${API}${URL_PATH}/$" \
        --include \
        --request GET \
        --header "Authorization: Token token=BAhJIiU2MWE3MTI0MzFlYjU1ZmEwYzRiMTg3NzM0YWY3ZTIyNAY6BkVG--49ef5fc1d2388925575d4ce3e86b4b44eb20d1cc"

// DELETE WITH AUTH
curl -X "DELETE" http://localhost:4741/hives/6 \
--include \
--header "Authorization: Token token=BAhJIiUyMGY1YjYzNjhkMjFkM2VkNzQ1MjNmMDJiNzljYjljNQY6BkVG--6dba2498e090d17c963f47d26f73b9be8c0e85ef"

// PATCH USER AUTH

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/hives/5"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiUyMGY1YjYzNjhkMjFkM2VkNzQ1MjNmMDJiNzljYjljNQY6BkVG--6dba2498e090d17c963f47d26f73b9be8c0e85ef" \
  --data '{
    "hive": {
      "hive_name": "Hive Patch"
    }
  }'
