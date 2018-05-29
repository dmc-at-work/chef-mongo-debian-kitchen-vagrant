name 'mongodb'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures mongodb'
long_description 'Installs/Configures mongodb'
version '0.1.0'
chef_version '>= 12.14' if respond_to?(:chef_version)

depends 'apt', '>= 1.8.2'
depends 'yum', '>= 3.0'
depends 'build-essential', '>= 5.0.0'
# depends 'libssl', '~> 0.0.2'

# depends 'sc-mongodb', '~> 1.0.1'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/mongodb/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/mongodb'
