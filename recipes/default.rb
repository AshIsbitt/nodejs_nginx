#
# Cookbook:: nodejs_nginx
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

package 'nginx'
package 'nodejs'

service 'nginx' do
  action [:enable, :start]
end

# Filipe's
template '/etc/nginx/sites-available/proxy.conf.erb' do
  source 'proxy.conf.erb'
  notifies :restart, 'service[nginx]'
end

link '/etc/nginx/sites-enabled/proxy.conf.erb' do
  to '/etc/nginx/sites-available/proxy.conf.erb'
  notifies :restart, 'service[nginx]'
end

link '/etc/nginx/sites-enabled/default' do
  action :delete
  notifies :restart, 'service[nginx]'
end
