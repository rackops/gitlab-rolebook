name             'gitlab-rolebook'
maintainer       'Rackspace US, INC'
maintainer_email 'ryan.richard@rackspace.com'
license          'All rights reserved'
description      'Installs/Configures gitlab-rolebook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'

depends cookbook-gitlab
depends mysql
