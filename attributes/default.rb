# FIXME: make this more friendly when/if public
default['k9']['version'] = 'b22543399ebb0843a8b01faf12b8bfad12adb830'
default['k9']['url'] = "https://s3.amazonaws.com/dd-k9/#{node['k9']['version']}"
default['k9']['checksum'] = 'e899cd3b8c7b2d2f3c4dd8f3c38dfcff63bf07883d84585ab205703c61434a11'

default['k9']['install_path'] = '/usr/local/bin/k9'

default['k9']['user'] = 'k9'
default['k9']['group'] = 'k9'

default['k9']['config_path'] = '/etc/k9/k9.conf'
default['k9']['config']['pruning_configs_dir'] = '/etc/k9/pruning_configs'
default['k9']['config']['log_level'] = 'INFO'
default['k9']['config']['listen_port'] = 8284
default['k9']['config']['dd_url'] = node['datadog']['url']
