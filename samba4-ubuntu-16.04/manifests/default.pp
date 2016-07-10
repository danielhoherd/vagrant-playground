exec { 'apt-get update':
  path => '/usr/bin'
}

group { 'dave':
  ensure => 'present',
  gid    => '1501',
} ->
user { 'dave':
  ensure     => 'present',
  comment    => 'dave,,,',
  gid        => '1501',
  groups     => ['dave', 'adm'],
  home       => '/home/dave',
  shell      => '/bin/bash',
  uid        => '1501',
  managehome => true,
}
