default['confd']['version'] = "0.9.0"
default['confd']['checksum'] = "e08cab02277689a66afd28335b0398c26db95f6d1a6ae01cf45c8a6fc5639ae5"

# Commit to build from source (not implemented yet)
default['confd']['sha256'] = ""

default['confd']['confdir'] = "/etc/confd"
default['confd']['interval'] = "30"
default['confd']['prefix'] = "/"
default['confd']['nodes'] = nil
default['confd']['client_cert'] = nil
default['confd']['client_key'] = nil
default['confd']['watch'] = false
default['confd']['scheme'] = 'http'

case node['platform_family']
when 'debian'
  default['confd']['init_style'] = 'init'
  default['confd']['pid_file'] = '/var/run/confd.pid'
when 'rhel', 'fedora'
  default['confd']['init_style'] = 'init'
  default['confd']['pid_file'] = '/var/run/confd.pid'
when 'arch',
  default['confd']['init_style'] = 'systemd'
  default['confd']['pid_file'] = nil
else
  default['confd']['init_style'] = 'init'
  default['confd']['pid_file'] = '/var/run/confd.pid'
end
