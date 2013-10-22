#
# Cookbook Name:: gitlab-rolebook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node.default["gitlab"]["https"] = true

include_recipe "apt"
include_recipe "rackops-rolebook"
include_recipe "mysql::server"
include_recipe "gitlab"


