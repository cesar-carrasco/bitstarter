#!/bin/bash

# Add repo and install Node.js
sudo apt-get update
sudo apt-get install python-software-properties python g++ make -y
sudo add-apt-repository ppa:chris-lea/node.js -y
sudo apt-get update
sudo apt-get install nodejs -y

# Install the Heroku Toolbelt
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# Install node packages as declared in package.json
cd /vagrant
npm install

# Generate an rsa SSH key with no passphrase and store it 
# in /home/vagrant/.ssh/id_rsa to later add to github
# https://github.com/settings/ssh
ssh-keygen -t rsa -f $HOME/.ssh/id_rsa -N ""
#cat $HOME/.ssh/id_rsa.pub

# Run the following to add your key to heroku:
#heroku login
#heroku keys:add
