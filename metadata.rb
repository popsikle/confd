name             "confd"
maintainer       "Salvatore Poliandro"
maintainer_email "sal@keep.com"
license          "Apache 2.0"
description      "Chef Cookbook for confd"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.1"

%w{ ubuntu debian arch }.each do |os|
  supports os
end
