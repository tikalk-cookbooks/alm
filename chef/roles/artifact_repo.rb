name 'bug_tracker'
description 'will install artifacgory with apache reverse proxy on a node'
run_list 'recipe[artifactory]', 'recipe[artifactory::apache-proxy];'

# An example ov "Override Attributes ..."
 default_attributes(
  "mysql" => {
     :server_root_password => "manager",
     :server_debian_password => "manager",
     :server_repl_password => "manager"
   }
 )
