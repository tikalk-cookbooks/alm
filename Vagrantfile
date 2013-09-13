# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "opscode-ubuntu-12.04_chef-11.4.4"
  config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_chef-11.4.4.box"

  config.vm.network :private_network, ip: "2.2.2.10"

  config.vm.provision :chef_solo do |chef|
  	chef.add_recipe "alm"
  
    chef.json = {
      :redmine => {
        :databases => {
          :production => {
            :password => "default_pass"
          }
        }
      },
      :mysql => {
        :server_root_password => "default_pass",
        :server_repl_password => "default_pass",
        :server_debian_password => "default_pass"
      }
    }
  end
  
  if !File.directory?(File.expand_path("../cookbooks", __FILE__))
    puts "Run `librarian-chef install` first to bring down the cookbooks."
    exit 1
  end

end