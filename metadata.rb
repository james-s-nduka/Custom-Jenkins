name 'custom-jenkins'
maintainer 'James N'
maintainer_email 'james@example.com'
license 'All Rights Reserved'
description 'Installs/Configures custom-jenkins'
long_description 'Installs/Configures custom-jenkins'
version '0.1.0'
chef_version '>= 12.14' if respond_to?(:chef_version)

depends 'jenkins', '~> 6.0.0'
depends 'java', '~> 2.2.0'
