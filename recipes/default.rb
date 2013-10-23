#
# Cookbook Name:: gitlab-rolebook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#node.default["gitlab"]["https"] = true

apt = execute "apt-get update" do
   action :nothing
end

if 'debian' == node['platform_family']
   if !File.exists?('/var/lib/apt/periodic/update-success-stamp')
     apt.run_action(:run)
   elsif File.mtime('/var/lib/apt/periodic/update-success-stamp') <
Time.now - 86400
     apt.run_action(:run)
   end
end

#hack to get make installed before anything else
apt = execute "apt-get install make" do
   action :nothing
end

node.default['postfix']['main']['myhostname'] = "gitlab.rackops.org"

include_recipe "apt"
include_recipe "rackops-rolebook"
include_recipe "mysql::server"
include_recipe "gitlab"
include_recipe "postfix"




