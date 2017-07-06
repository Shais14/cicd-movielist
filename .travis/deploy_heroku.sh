#!/bin/sh
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku plugins:install heroku-container-registry
#heroku container:login
docker login -u $HEROKU_USER -p $HEROKU_API_KEY registry.heroku.com
heroku container:push web --app $HEROKU_APP_NAME
