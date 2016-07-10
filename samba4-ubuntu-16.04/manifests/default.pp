exec { 'apt-get update':
  path => '/usr/bin'
}

package { 'vim':
  ensure => 'latest'
}

package { 'avahi-daemon':
  ensure => 'latest'
}

package { 'samba':
  ensure => 'latest'
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

file { '/home/dave':
  ensure => 'directory',
  group  => '1501',
  mode   => '755',
  owner  => '1501',
}
