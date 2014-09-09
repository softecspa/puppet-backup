# == Class backup::params
#
# This class is meant to be called from backup
# It sets variables according to platform
#
class backup::params {
  case $::osfamily {
    'Debian': {
      $package_name   = 'backup'
      $provider_name  = 'gem'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
