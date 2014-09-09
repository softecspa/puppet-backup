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
  $package_name             = params_lookup( 'package_name' ),
  $provider_name            = params_lookup( 'provider_name' ),
  $package_ensure           = params_lookup( 'package_ensure' ),
  $storage_s3               = params_lookup( 'storage_s3' ),
  $s3_access_key_id         = params_lookup( 's3_access_key_id' ),
  $s3_secret_access_key     = params_lookup( 's3_secret_access_key' ),
  $s3_region                = params_lookup( 's3_region' ),
  $s3_bucket                = params_lookup( 's3_bucket' ),
  $s3_chunk_size            = params_lookup( 's3_chunk_size' ),
  $s3_max_retries           = params_lookup( 's3_max_retries' ),
  $s3_retry_waitsec         = params_lookup( 's3_retry_waitsec' ),
  $s3_encryption            = params_lookup( 's3_encryption' ),
  $s3_reduced_redundancy    = params_lookup( 's3_reduced_redundancy' ),
  $storage_ftp              = params_lookup( 'storage_ftp' ),
  $ftp_server_username      = params_lookup( 'ftp_server_username' ),
  $ftp_server_password      = params_lookup( 'ftp_server_password' ),
  $ftp_server_ip            = params_lookup( 'ftp_server_ip' ),
  $ftp_server_port          = params_lookup( 'ftp_server_port' ),
  $ftp_server_path          = params_lookup( 'ftp_server_path' ),
  $ftp_server_keep          = params_lookup( 'ftp_server_keep' ),
  $ftp_server_passive_mode  = params_lookup( 'ftp_server_passive_mode' ),
  $storage_scp              = params_lookup( 'storage_scp' ),
  $scp_server_username      = params_lookup( 'scp_server_username' ),
  $scp_server_password      = params_lookup( 'scp_server_password' ),
  $scp_server_ip            = params_lookup( 'scp_server_ip' ),
  $scp_server_port          = params_lookup( 'scp_server_port' ),
  $scp_server_path          = params_lookup( 'scp_server_path' ),
  $scp_server_keep          = params_lookup( 'scp_server_keep' ),
  $scp_server_options       = params_lookup( 'scp_server_options' ),
) inherits backup::params {

  # validate parameters here

  class { 'backup::install': } ->
  class { 'backup::config': } ~>
  Class['backup']
}
