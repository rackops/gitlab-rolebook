name             'gitlab-rolebook'
maintainer       'Rackspace US, INC'
maintainer_email 'ryan.richard@rackspace.com'
license          'All rights reserved'
description      'Installs/Configures gitlab-rolebook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.7'

depends "gitlab", "6.1.0"
depends "mysql"
depends "rackops-rolebook"
depends "postfix"