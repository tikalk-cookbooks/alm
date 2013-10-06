#include_recipe "redmine"
#include_recipe "jenkins"

attrs = node[:prepare]

# create sapinst group
group attrs[:gname] do
  gid attrs[:gid]
  members [:root]
end


user attrs[:uname] do
  supports :manage_home => true
  comment "Opencm User"
  uid attrs[:uid]
  gid attrs[:gid]
  home attrs[:homedir]
  shell "/bin/bash"
  password attrs[:passwd]
end


