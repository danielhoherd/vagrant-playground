FROM ubuntu:14.04
MAINTAINER Daniel Hoherd <hoherd@yelp.com>

RUN apt-get update
RUN apt-get install -y wget

RUN export DEBIAN_FRONTEND=noninteractive && \
    wget --no-verbose https://apt.puppetlabs.com/puppetlabs-release-pc1-trusty.deb && \
    dpkg -i puppetlabs-release-pc1-trusty.deb && \
    apt-get update

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get install puppetserver -y

# vim: tabstop=4 expandtab fenc=utf-8
