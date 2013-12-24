name 'ci-server'
description 'Installs a Continuous Integration server [Jenkins]'
run_list 'recipe[apt]', 'recipe[jenkins::server]', 'recipe[jenkins::proxy]'

default_attributes({
  # Sets java version
  :java => {
        :jdk_version => "7",
        :install_flavor => "oracle",
        :oracle => {
                :accept_oracle_download_terms => true
        }
  },
  # Define revers proxy type ...
  :jenkins => {
        #:iptables_allow => 'enable',
        :http_proxy => {
          :variant => "nginx"
        }
  }  

 }
)
