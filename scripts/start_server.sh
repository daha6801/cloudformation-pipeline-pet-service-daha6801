#!/bin/bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install --lts
node -e "console.log('Running Node.js ' + process.version)"
node --version
pwd
cd /pet-services # Go to tge project directory
npm install
#nohup node app.js &
#node app.js
sudo npm i -g pm2
pm2 start app.js
#sudo apt update
sudo apt-get update && sudo apt-get -y upgrade
wait(300)
sudo apt-get install -y nginx
export PATH=$PATH:/usr/local/nginx/
nginx -v
sudo cp /scripts/nginx-default-replace /etc/nginx/sites-enabled/default
sudo service nginx restart
exit

