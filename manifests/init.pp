# == Class: backup
#
# Full description of class backup here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class backup (
  $package_name   = $backup::params::package_name,
  $provider_name  = $backup::params::provider_name,
) inherits backup::params {

  # validate parameters here

  class { 'backup::install': } ->
  class { 'backup::config': } ~>
  Class['backup']
}
