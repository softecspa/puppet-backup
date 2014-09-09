# == Class backup::install
#
class backup::install {

  package { $backup::package_name:
    ensure    => present,
    provider  => $backup::provider_name,
  }
}
