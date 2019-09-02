#!/bin/bash

echo "Starting Installation ruby 2.5..."

# Install dependencies
yum install -y gnupg2 gcc-c++ patch readline readline-devel zlib zlib-devel libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison iconv-devel ruby-devel libxml2 libxml2-devel libxslt libxslt-devel git

# Install Ruby from rvm
#gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
gpg2 --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

\curl -sSL https://get.rvm.io | bash -s stable --ruby

#Enable rvm in current shell
source /usr/local/rvm/scripts/rvm

echo "view error log"
cat /usr/local/rvm/log/_ruby-2.6.3/alias_create.log

echo "gem version"
gem update `gem outdated | cut -d ' ' -f 1`



#Install Bundler
gem install bundler

echo "Installation is completed now that was easy :)"
