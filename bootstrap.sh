#!/usr/bin/env bash

# install and/or reload ntp daemon

apt-get -y install ntp
service ntp reload

# setup correct timezone
echo "Europe/Zurich" > /etc/timezone
dpkg-reconfigure -f noninteractive tzdata

#wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && dpkg -i erlang-solutions_1.0_all.deb 
curl --insecure --silent https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb -O
dpkg -i erlang-solutions_1.0_all.deb

apt-get update 
apt-get -y install elixir

# install node.js
curl --insecure --silent -L https://nodejs.org/dist/v0.12.7/node-v0.12.7-linux-x64.tar.gz  -O
tar xf node-v0.12.7-linux-x64.tar.gz -C /usr/local
if [ ! -h /usr/local/bin/node ]; then
	ln -s /usr/local/node-v0.12.7-linux-x64/bin/node /usr/local/bin/node
fi
if [ ! -h /usr/local/bin/npm ]; then
	ln -s /usr/local/node-v0.12.7-linux-x64/bin/npm /usr/local/bin/npm
fi

#apt-get -y install nodejs-legacy

# install PostgreSQL server
apt-get -y install postgresql

# install inotify-tools
apt-get -y install inotify-tools

