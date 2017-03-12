#! /usr/bin/env bash

apt-get update
apt-get install -y apache2
apt-get install -y php7.0 libapache2-mod-php7.0 php7.0-opcache
