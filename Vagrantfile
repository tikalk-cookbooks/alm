# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu-12.04-omnibus-chef"
  config.vm.box_url = "http://grahamc.com/vagrant/ubuntu-12.04-omnibus-chef.box"

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
