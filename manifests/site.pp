node default {
}
# This node name might need to be eaventlin03.sv.splunk.com...
node 'master.puppet.vm' {
  include role::master_server
}
