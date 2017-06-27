# k9 Chef cookbook

A [Chef](https://www.chef.io/) cookbook to deploy & configure [k9](https://github.com/wk8/k9).

# Usage

Simply include the `k9::default` recipe in your run list, then manage your pruning configurations with `k9_pruning_config` resources.

# Resources

## k9_pruning_config

Available actions: `:create` and `:delete`

Available properties:

| Name | Type | Default | Explanation |
| ---- | ---- | ------- | ----------- |
| path (name property) | String | | The absolute path to the pruning config (e.g. /opt/my_app/config/k9.yml) |
| name | String | `::File.basename(path, '.yml')` | Under what name the config will be copied to `node['k9']['config']['pruning_configs_dir']` (must be unique node-wide) |

The k9 service is properly notified to reload pruning configs when they change.
