#!/bin/bash

echo "Starting Installation ruby 2.5..."

# Install dependencies
yum install -y gcc-c++ patch readline readline-devel zlib zlib-devel libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison iconv-devel ruby-devel libxml2 libxml2-devel libxslt libxslt-devel git

# Install Ruby from rvm
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

\curl -sSL https://get.rvm.io | bash -s stable --ruby

#Enable rvm in current shell
source /usr/local/rvm/scripts/rvm

#Install Bundler
gem install bundler

echo "Installation is completed now that was easy :)"
