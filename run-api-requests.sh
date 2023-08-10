TOKEN=$(curl -X POST \
    --silent \
    --data '{ "user": "erickwendel",  "password": "123"}' \
    http://localhost:3000/login | sed -n 's/.*"token":"\([^"]*\).*/\1/p'
)

echo "Token capturado: $TOKEN"
echo

RESULT=$(curl -X GET \
    --silent \
    --header "Authorization: Bearer $TOKEN" \
    http://localhost:3000/
)

echo "Resposta da rota privada: $RESULT"