#!/usr/bin/env bash

# install and/or reload ntp daemon

# TODO: configure timezone (tzdata)

apt-get -y install ntp
service ntp reload

#wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && dpkg -i erlang-solutions_1.0_all.deb 
curl --insecure --silent https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb -O
dpkg -i erlang-solutions_1.0_all.deb

apt-get update 
apt-get -y install elixir

