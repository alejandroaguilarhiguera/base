git pull
if [ "$1" == "api" ]; then
  cd projects/api
  git pull
  cd ../..
  docker-compose -f docker-compose.prod.yml build api
  docker-compose -f docker-compose.prod.yml up -d api

elif [ "$1" == "webapp" ]; then
  docker-compose -f docker-compose.prod.yml build nginx
  cd projects/webapp
  git pull
  cd ../..
  docker-compose -f docker-compose.prod.yml build webapp
  docker-compose -f docker-compose.prod.yml up -d webapp
elif ["$1" == "strapi"]; then
  docker-comopse -f docker-compose.prod.yml build nginx
  cd projects/strapi
  git pull
  cd ../..
  docker-compose -f docker-compose.prod.yml build strapi
  docker-compose -f docker-compose.prod.yml up -d strapi


