#!/bin/bash

set -e

# if running on a chef node - we want this in path ...
PATH=${PATH}:/opt/chef/embedded/bin/:/opt/chef/bin
export PATH

librarian-chef install
chef-solo -c solo.rb -j $node.json -l debug
