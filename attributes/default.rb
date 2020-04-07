#Attributes of the cookbooks

#Attributes to be set for external cookbooks
default['nodejs']['repo'] = 'https://deb.nodesource.com/node_8.x'
default['nodejs']['version'] = '8.11.2'

#Attributes for internal/templated use
default['nginx']['proxy_port'] = 3000
