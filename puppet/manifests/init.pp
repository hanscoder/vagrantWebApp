package {'git':
  ensure => '1:1.9.1-1',
}

# It is needed for phantomjs but to be sure it is installed before nodejs.
package { 'fontconfig':
  ensure => '2.11.0-0ubuntu4.1',
  before => Class['nodejs']
}

class { 'nodejs':
  version => 'v0.10.33',
}

package {'bower':
  provider => 'npm',
  ensure   => '1.3.12',
  require => Class['nodejs'],
}

package {'gulp':
  provider => 'npm',
  ensure   => '3.8.10',
  require => Class['nodejs'],
}

package {'grunt-cli':
  provider => 'npm',
  ensure   => '0.1.13',
  require => Class['nodejs'],
}

package {'http-server':
  provider => 'npm',
  ensure   => '0.7.4',
  require => Class['nodejs'],
}
