

GITHUB_USER = "ErickMayorgaR"

#Consultar informacion
USER=$(curl "https://api.github.com/users/$GITHUB_USER" | jq '.login') 
ID=$(curl "https://api.github.com/users/$GITHUB_USER" | jq '.id') 
CREATED_AT = CREATED=$(curl "https://api.github.com/users/$GITHUB_USER" | jq '.created_at')

#Guardar Info en log file e imprimir 
FECHA=$(date +%Y-%m-%d)
mkdir "/tmp/$FECHA"
echo "Hola $USER. User ID: $ID. La cuenta fue creada el: $CREATED_AT." | tee "/tmp/$FECHA/saludos.log"


