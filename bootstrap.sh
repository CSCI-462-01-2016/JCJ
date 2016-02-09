#!/usr/bin/env bash

apt-get update
apt-get install -y git unzip openjdk-7-jdk curl python-setuptools git python-dev python-pip

if ! [ -L /home/vagrant/opensource ]; then
  rm -rf /home/vagrant/opensource
  ln -fs /vagrant /home/vagrant/opensource
fi

cd /home/vagrant/opensource

if [ ! -f /home/vagrant/opensource/oppia ]; then
	git clone https://github.com/oppia/oppia.git
fi

sudo pip install gitpython

cd oppia
bash scripts/start.sh
