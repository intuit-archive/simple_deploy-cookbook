name             'chef-simple_deploy'
maintainer       'Brett Weaver'
maintainer_email 'brett_weaver@intuit.com'
license          'Apache 2.0'
description      'Manage Cloud Formation Stacks via Simple Deploy'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.2'

%w{redhat centos}.each do |os|
  supports os
end
