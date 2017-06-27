# FIXME: get this from the repo when/if public
remote_file node['k9']['install_path'] do
  source node['k9']['url']
  checksum node['k9']['checksum']
  owner 'root'
  group 'root'
  mode 0755
  notifies :restart, 'runit_service[k9]'
end
