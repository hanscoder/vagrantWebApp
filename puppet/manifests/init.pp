
class { 'nodejs':
  version => 'v0.10.33',
}

package {'http-server':
  provider => 'npm',
  require => Class['nodejs'],
}

package {'karma':
  provider => 'npm',
  require => Class['nodejs'],
}

package {'karma-ng-scenario':
  provider => 'npm',
  require => Class['nodejs'],
}
