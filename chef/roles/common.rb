name 'common'
description 'The common role will define stuff such as users, proxy servers, etc which are a common'
run_list 'recipe[alm::user]'

# An example ov "Override Attributes ..."
#  default_attributes(
#   "authorization" => {
#     "sudo" => {
#       "groups" => ["root", "sysadmin", "opencm" ],
#       "users" => ["opencm" ],
#       "passwordless" => true
#     }
#   }
# )
