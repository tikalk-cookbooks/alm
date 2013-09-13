name		  "alm"
maintainer        "Tikal Knowledge LTD"
maintainer_email  "hagzag@tikalk.com"
license           "Apache 2.0"
description       "Installs Tikal ALM and related packages"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.0.1"

%w{ ubuntu debian }.each do |os|
  supports os
end

depends 'redmine'
