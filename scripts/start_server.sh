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
nohup node /home/ubuntu/app.js &

