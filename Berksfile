site :opscode

metadata

cookbook "mysql", github: "rackspace-cookbooks/mysql"
cookbook "rackops-rolebook", github: "rackops/rackops-rolebook"
cookbook "rackspace-user", github: "rackspace-cookbooks/rackspace-user"
cookbook "openssl", '~> 1.1.0'
cookbook "postfix", github: "rackspace-cookbooks/postfix"

group :integration do
  cookbook 'apt'
end