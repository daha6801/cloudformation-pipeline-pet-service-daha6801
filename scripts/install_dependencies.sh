#!/bin/bash

sleep 5m

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install --lts
node -e "console.log('Running Node.js ' + process.version)"

sleep 5m

sudo apt install npm
node --version

npm install express
npm install pm2 -g

#sudo wget http://nginx.org/keys/nginx_signing.key
#sudo apt-key add nginx_signing.key
#sudo cp /scripts/sources.list-replace /etc/apt/sources.list
sudo apt-get update 
sudo apt install -y nginx
export PATH=$PATH:/usr/local/nginx/
#sudo systemctl start nginx.service
#sudo systemctl status nginx.service
nginx -v

exit
