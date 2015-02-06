default['confd']['version'] = "0.7.1"
default['confd']['sha256'] = "a3409fec4d18d80af857bea8be03264e50859e21570bcaaffe0b108ba751fef8"

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
