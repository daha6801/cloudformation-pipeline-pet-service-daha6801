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

sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get install -y nginx
export PATH=$PATH:/usr/local/nginx/
nginx -v

exit
