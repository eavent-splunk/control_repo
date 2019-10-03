node default {
}
# This node name might need to be eaventlin03.sv.splunk.com...
node 'eaventlin03.sv.splunk.com' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => $fqdn,
  }
}
node /^web/ {
 include role::app_server
}
node /^db/ {
 include role::db_server
}
