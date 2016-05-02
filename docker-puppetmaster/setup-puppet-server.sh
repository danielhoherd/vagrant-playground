#!/usr/bin/env bash
set -e

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y wget
wget --no-verbose https://apt.puppetlabs.com/puppetlabs-release-pc1-trusty.deb
dpkg -i puppetlabs-release-pc1-trusty.deb
apt-get update
apt-get install -yq puppetserver puppet-agent puppetdb-termini
rsync -a /vagrant/server/etc /
chown -R puppet:puppet "/etc/puppetlabs/puppet"
/etc/init.d/puppetserver start
