node.default['datadog']['url'] = "http://localhost:#{node['k9']['config']['listen_port']}"

include_recipe "#{cookbook_name}::install"

include_recipe "#{cookbook_name}::user"

include_recipe "#{cookbook_name}::config"

include_recipe "#{cookbook_name}::service"
