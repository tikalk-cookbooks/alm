#
# Cookbook Name:: ALM
#
# Copyright 2013, Tikalk LTD.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
####

default[:prepare][:gname] = 'opencm'
default[:prepare][:gid] = 771

default[:prepare][:uname] = 'opencm'
default[:prepare][:uid] = 771
default[:prepare][:passwd] = node[:prepare][:uname] # whilst testin no override, in prod overitten by databag ...

default[:prepare][:homedir] = '/home/' + node[:prepare][:uname]


