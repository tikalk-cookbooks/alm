name 'test_environment'
description 'Does nothing ..., but can be used very similar to an environment ...'
run_list ''

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
