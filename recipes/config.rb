# create the directories
[node['k9']['config_path'], node['k9']['config']['pruning_configs_dir']].each do |path|
  directory ::File.dirname(path) do
    owner node['k9']['user']
    group node['k9']['group']
    recursive true
  end
end

# then render the config
template node['k9']['config_path'] do
  source 'k9.conf.erb'
  owner 'root'
  group 'root'
  mode 0644
  notifies :restart, 'runit_service[k9]'
end
