#
# solo.rb :: Chef-Solo configuration file
#
log_level = ENV['CHEF_LOG'] ? ENV['CHEF_LOG'].to_sym : :info
base_dir = File.expand_path('../', __FILE__)
file_cache_path File.join(base_dir, 'tmp/chef-solo')
file_backup_path  File.join(base_dir, 'tmp/chef-solo-backup')

cookbook_path [File.join(base_dir, 'chef/cookbooks'), File.join(base_dir, 'chef/site-cookbooks')]
environment_path File.join(base_dir, 'chef/environments')
node_path File.join(base_dir, 'chef/nodes')
role_path File.join(base_dir, 'chef/roles')
data_bag_path File.join(base_dir, 'chef/data_bags')


# Default json for base role preparation
json_attribs File.join(base_dir, 'chef/nodes', 'default.json')

# If you need to configure your Coroprate proxy setting see these lines ::
# http_proxy ""
# https_proxy ""
# no_proxy "localhost, 127.0.0.1"
