group node['k9']['group']

user node['k9']['user'] do
  comment 'k9 user'
  gid node['k9']['group']
  manage_home true
  home node['k9']['home']
end
