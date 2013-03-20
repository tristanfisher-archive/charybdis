name             'charybdis'
maintainer       'Amplify SysEng'
maintainer_email 'tristan@amplify.com, syseng@amplify.com'
license          'Apache 2.0'
description      'Installs/Configures the Charybdis IRC server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe "charybdis", "Configures a basic IRC server"

%w{ debian ubuntu }.each do |os|
  supports os
end
