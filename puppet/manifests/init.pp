# It is needed for phantomjs but to be sure it is installed before nodejs.
package { 'fontconfig':
  ensure => latest,
  before => Class['nodejs']
}

class { 'nodejs':
  version => 'v0.10.33',
}

package {'http-server':
  provider => 'npm',
  ensure   => 'present',
  require => Class['nodejs'],
}

package {'karma-cli':
  provider => 'npm',
  ensure   => 'present',
  require => Class['nodejs'],
}

package {'karma-ng-scenario':
  provider => 'npm',
  ensure   => 'present',
  require => Class['nodejs'],
}

package {'phantomjs':
  provider => 'npm',
  ensure   => 'present',
  require => CLass['nodejs'],
}

package {'karma-phantomjs-launcher':
  provider => 'npm',
  ensure   => 'present',
  require => CLass['nodejs'],
}

