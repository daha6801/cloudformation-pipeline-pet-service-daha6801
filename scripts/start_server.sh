#!/bin/bash

node -e "console.log('Running Node.js ' + process.version)"
node --version
pwd
cd /pet-services # Go to the project directory

sudo npm i -g pm2
pm2 start app.js

nginx -v
sudo cp /scripts/nginx-default-replace /etc/nginx/sites-enabled/default
sudo service nginx restart
#sudo systemctl start nginx.service
#sudo systemctl status nginx.service
exit

