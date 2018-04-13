# -*- mode: ruby -*-
# vi: set ft=ruby :

  # Please don't change it unless you know what you're doing. -> Ok, I will not!
Vagrant.configure("2") do |config|

  # Online documentation at https://docs.vagrantup.com. -> Thank you for reminding me

  # Boxes at https://vagrantcloud.com/search.
config.vm.box = "ubuntu/xenial64"

  # Disable automatic box update checking. -> Not now, just for new boxes
  # config.vm.box_check_update = false

  # Create a forwarded port mapping. -> http://localhost:8080
config.vm.network "forwarded_port", guest: 80, host: 8080

  # Example for VirtualBox:
config.vm.provider "virtualbox" do |v|
v.memory = 2048
v.cpus = 2

end

  # Additional provisioners such as Puppet, Chef, Ansible, Salt, and Docker...
config.vm.provision "shell", path: "provision-script.sh"

end
