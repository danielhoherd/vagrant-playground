# Overview

The end goal is to get a puppetmaster running in Docker that puppet 4 clients can connect to. Vagrant is easier to iterate on, so we're doing it in Vagrant first.

# Notes

Remember to `vagrant plugin install vagrant-cachier` if that plugin is missing

- <https://github.com/rfkrocktk/docker-puppetmaster/blob/develop/Dockerfile>
- <https://docs.puppet.com/puppetserver/2.3/install_from_packages.html>
