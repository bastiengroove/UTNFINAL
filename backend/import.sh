#!/bin/bash

# Obtiene la URL de la base de datos desde Heroku y la guarda en config.txt
heroku config | grep JAWSDB_URL > config.txt

export LDFLAGS="-L/usr/local/opt/mysql-client@8.4/lib"
export CPPFLAGS="-I/usr/local/opt/mysql-client@8.4/include"

# Lee la URL desde el archivo config.txt
url=$(<config.txt)

# Extrae el nombre de la base de datos
dbname=$(echo "$url" | awk -F'[/?]' '{print $NF}')
echo "DB name: $dbname"
echo "DB name: $dbname" >> config.txt

# Extrae el host
host=$(echo "$url" | awk -F'[@/]' '{print $(NF-1)}')
echo "Host: $host"
echo "Host: $host" >> config.txt

# Extrae la contraseña
password=$(echo "$url" | awk -F'[:@]' '{print $(NF-1)}')
echo "Password: $password"
echo "Password: $password" >> config.txt

# Extrae el usuario
user=$(echo "$url" | awk -F'[/:]' '{print $(NF-2)}')
echo "User: $user"
echo "User: $user" >> config.txt

# Verifica si se proporcionó un archivo SQL como argumento
if [ -z "$1" ]; then
    echo "Error: Debes proporcionar un archivo SQL como argumento."
    exit 1
fi

# Ejecuta el comando MySQL
mysql --user="$user" --password="$password" --host="$host" --database="$dbname" < "$1"
