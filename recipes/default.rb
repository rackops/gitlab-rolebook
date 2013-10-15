#
# Cookbook Name:: gitlab-rolebook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node.default["gitlab"]["https"] = true

include_recipe "gitlab"
include_recipe "mysql::server"


