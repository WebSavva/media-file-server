export $( grep -E '.*=(.*)' .env )
envsubst '$HOST' < ./nginx.conf.template > ./nginx.conf

mkdir -p files
mkdir -p db
mkdir -p files/music
mkdir -p ssl
chmod -R 777 ./files

docker-compose up -d