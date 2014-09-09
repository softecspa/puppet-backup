# == Class backup::install
#
class backup::install {

  package { $backup::package_name:
    ensure    => $backup::package_ensure,
    provider  => $backup::provider_name,
  }
}
