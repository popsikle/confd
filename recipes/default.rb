# download and install
remote_file "/usr/local/bin/confd" do
  owner "root"
  group "root"
  mode "0755"
  source "https://github.com/kelseyhightower/confd/releases/download/v#{node['confd']['version']}/confd-#{node['confd']['version']}-linux-amd64"
  checksum node['confd']['checksum']
end

directory "#{node['confd']['confdir']}/conf.d/" do
  recursive true
end

directory "#{node['confd']['confdir']}/templates/" do
  recursive true
end

case node['confd']['init_style']
when 'systemd'
  template '/usr/lib/systemd/system/confd.service' do
    source 'systemd.service.erb'
    owner 'root'
    group 'root'
    mode '0644'
  end
else
  template '/etc/init.d/confd' do
    source 'init.service.erb'
    owner 'root'
    group 'root'
    mode '0755'
  end
end

service 'confd' do
  provider Chef::Provider::Service::Systemd if node['platform'] == 'arch'
  service_name "confd"
  supports :restart => true, :status => true, :reload => false
  action :nothing
end

template "#{node['confd']['confdir']}/confd.toml" do
  mode 0644
  notifies :restart, resources(:service => 'confd')
end

service "confd" do
  action :start
end