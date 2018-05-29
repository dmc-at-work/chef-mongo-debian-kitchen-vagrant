#
# Cookbook:: mongodb
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# Installs openssl
package 'openssl'

# DPKG Installation
# mongos
cookbook_file '/tmp/mongodb-org-mongos_3.6.0_amd64.deb' do
  # The name of the file in COOKBOOK_NAME/files/default or the path to a file located in COOKBOOK_NAME/files
  source 'mongodb-org-mongos_3.6.0_amd64.deb'
  
  # Identifies the steps the chef-client will take to bring the node into the desired state
  # Create a file. If a file already exists (but does not match), update that file to match.
  action :create
end
# server
cookbook_file '/tmp/mongodb-org-server_3.6.0_amd64.deb' do
  source 'mongodb-org-server_3.6.0_amd64.deb'
  action :create
end
# shell
cookbook_file '/tmp/mongodb-org-shell_3.6.0_amd64.deb' do
  source 'mongodb-org-shell_3.6.0_amd64.deb'
  action :create
end
# tools
cookbook_file '/tmp/mongodb-org-tools_3.6.0_amd64.deb' do
  source 'mongodb-org-tools_3.6.0_amd64.deb'
  action :create
end
# mongodb
cookbook_file '/tmp/mongodb-org_3.6.0_amd64.deb' do
  source 'mongodb-org_3.6.0_amd64.deb'
  action :create
end


# mongos
dpkg_package 'mongodb-org-mongos_3.6.0_amd64.deb' do
  source '/tmp/mongodb-org-mongos_3.6.0_amd64.deb'
  action :install
end
# server
dpkg_package 'mongodb-org-server_3.6.0_amd64.deb' do
  source '/tmp/mongodb-org-server_3.6.0_amd64.deb'
  action :install
end
# shell
dpkg_package 'mongodb-org-shell_3.6.0_amd64.deb' do
  source '/tmp/mongodb-org-shell_3.6.0_amd64.deb'
  action :install
end
# tools
dpkg_package 'mongodb-org-tools_3.6.0_amd64.deb' do
  source '/tmp/mongodb-org-tools_3.6.0_amd64.deb'
  action :install
end
# mongodb
dpkg_package 'mongodb-org_3.6.0_amd64.deb' do
  source '/tmp/mongodb-org_3.6.0_amd64.deb'
  action :install
end

service 'mongod' do
# Manages the state of a service.
  # A list of properties that controls how the chef-client is to attempt to manage a service
  supports status: true

  # Identifies the steps the chef-client will take to bring the node into the desired state
  # Enables a service at boot and then starts the service
  action [:enable, :start]
end
