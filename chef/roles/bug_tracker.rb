name 'bug_tracker'
description 'will install redmine on a node'
run_list 'recipe[redmine]'

# An example ov "Override Attributes ..."
 default_attributes(
  "mysql" => {
     :server_root_password => "manager",
     :server_debian_password => "manager",
     :server_repl_password => "manager"
   }
 )
