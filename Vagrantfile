# -*- mode: ruby -*-
# vi: set ft=ruby :

#require 'multi_json'

Vagrant.configure("2") do |config|
  
 config.vm.box = "ubuntu-12.04-omnibus-chef"
 config.vm.box_url = "http://grahamc.com/vagrant/ubuntu-12.04-omnibus-chef.box"
 #config.vm.box = "CentOS-6.4-x86_64-Minimal"
 #config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130427.box"
  # Define the CM server - gitlab ?, subversion ?, apapche ...
 

  config.vm.define "scm" do |cm|
    cm.vm.hostname = "scm"
    cm.vm.provision :chef_solo do |chef|
      # chef.https_proxy    = ""
      # chef.no_proxy       = "127.0.0.1,localhost"
      chef.cookbooks_path = ["chef/cookbooks", "chef/site-cookbooks"]
      chef.roles_path     = ["chef/roles"]
      chef.log_level      = ENV['CHEF_LOG'] ? ENV['CHEF_LOG'].to_sym : :debug    
      chef.add_role "common"
      chef.add_role "scm"

      chef.json = {

      }
    end 
  end 
   
  
  # Define the CI server - jenkins + reverse proxy [ apache2 / naginx ] ... 
  config.vm.define "ci" do |ci|
    ci.vm.hostname = "ci"
    ci.vm.network "public_network", :bridge => 'vnet0'
    ci.vm.provision :chef_solo do |chef|
      # chef.https_proxy    = ""
      # chef.no_proxy       = "127.0.0.1,localhost"
      chef.cookbooks_path = ["chef/cookbooks", "chef/site-cookbooks"]
      chef.roles_path     = ["chef/roles"]
      chef.log_level      = ENV['CHEF_LOG'] ? ENV['CHEF_LOG'].to_sym : :debug    
      chef.add_role "common"
      chef.add_role "ci-server"

      chef.json = {

      }
    end 
  end 

  config.vm.define "bug-tracker" do |bt|
    bt.vm.hostname = "bt"
    bt.vm.network "public_network", :bridge => 'vnet0'
    bt.vm.provision :chef_solo do |chef|	
      # chef.https_proxy    = ""
      # chef.no_proxy       = "127.0.0.1,localhost"
      chef.cookbooks_path = ["chef/cookbooks", "chef/site-cookbooks"]
      chef.roles_path     = ["chef/roles"]
      chef.log_level      = ENV['CHEF_LOG'] ? ENV['CHEF_LOG'].to_sym : :debug    
      chef.add_role "common"
      chef.add_role "bug_tracker"

      chef.json = {
         :mysql => {
     	   :server_root_password => "manager",
     	   :server_debian_password => "manager",
           :server_repl_password => "manager"
         } 
      }
    end
  end 
  
  if !File.directory?(File.expand_path("../chef/cookbooks", __FILE__))
    puts "Run `librarian-chef install` first to bring down the cookbooks."
    exit 1
  end

end
