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

  #TODO: will become hiera lookup
 
  # STORAGE S3 
  $storage_s3             = $::backup_storage_s3
  $s3_access_key_id       = $::s3_access_key_id
  $s3_secret_access_key   = $::s3_secret_access_key
  $s3_region              = $::s3_region
  $s3_bucket              = $::backup_s3_bucket
  $s3_chunk_size          = $::backup_s3_chunk_size
  $s3_max_retries         = $::backup_s3_max_retries
  $s3_retry_waitsec       = $::backup_s3_retry_waitsec
  $s3_encryption          = $::backup_s3_encryption
  $s3_reduced_redundancy  = $::backup_s3_reduced_redundancy
  
  # STORAGE FTP
  $storage_ftp              = $::storage_ftp
  $ftp_server_username      = $::backup_ftp_username
  $ftp_server_password      = $::backup_ftp_password
  $ftp_server_ip            = $::backup_ftp_address
  $ftp_server_port          = $::backup_ftp_port
  $ftp_server_path          = $::backup_ftp_path
  $ftp_server_keep          = $::backup_ftp_keep
  $ftp_server_passive_mode  = $::backup_ftp_passive_mode
  
  #STORAGE SCP
  $storage_scp          = $::storage_scp
  $scp_server_username  = $::backup_scp_username
  $scp_server_password  = $::backup_scp_password
  $scp_server_ip        = $::backup_scp_address
  $scp_server_port      = $::backup_scp_port
  $scp_server_path      = $::backup_scp_path
  $scp_server_keep      = $::backup_scp_keep
  $scp_server_options   = $::backup_scp_options
  
}
