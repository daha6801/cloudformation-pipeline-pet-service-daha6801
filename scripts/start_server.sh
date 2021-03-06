#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install --lts
node -e "console.log('Running Node.js ' + process.version)"
sudo apt install npm
node --version

npm install express
npm install pm2 -g

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

