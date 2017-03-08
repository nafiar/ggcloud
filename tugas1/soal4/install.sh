#!/usr/bin/env bash

#install prequisite dependencies
sudo apt-get install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev 

#install rbenv
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH = "$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
exec $SHELL

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH = "$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' << ~/.bash_profile
exec $SHELL

#install ruby
rbenv install -v 2.2.3
rbenv global 2.2.3

#install gems
echo "gem: --no-document" > ~/.gemrc
gem install bundler

#install rails
install rails -v 5.0.1
rbenv rehash

#install javascript runtime
sudo yum -y install epel-release
sudo yum install nodejs