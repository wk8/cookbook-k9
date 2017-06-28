resource_name :k9_pruning_config

property :path, String, name_property: true, required: true
property :install_name, String, default: lazy { ::File.basename(path, '.yml') }

default_action :create

%i(create delete).each do |action_name|
  action action_name do
    install_path = ::File.join(node['k9']['config']['pruning_configs_dir'], "#{install_name}.yml")

    execute 'reload k9 pruning configs' do
      command 'sv hup k9'
      action :nothing
    end

    file install_path do
      content(::File.read(new_resource.path)) if action_name == :create
      action action_name
      notifies :run, 'execute[reload k9 pruning configs]'
    end
  end
end
