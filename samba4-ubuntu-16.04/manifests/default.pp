exec { 'apt-get update':
  path => '/usr/bin'
}

package { 'vim':
  ensure => 'latest'
}

# Required for `mkpasswd`
package { 'whois':
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
  # mkpasswd -m sha-512 asdf
  password   => '$6$5WG4yJVHBgnmd$BWt1acGzAU0ecUY1WZR4xqxG2/abG5VVnKx0cabu2VMluffer6NjeWDhF56m/QKJ8A144r/AyYFmH9xG5ssRn0',
}

file { '/home/dave':
  ensure => 'directory',
  group  => '1501',
  mode   => '755',
  owner  => '1501',
}
