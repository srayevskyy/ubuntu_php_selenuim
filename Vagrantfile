# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "peru/ubuntu-20.04-desktop-amd64"

  config.vm.synced_folder "./provision/", "/home/vagrant/provision"

  config.vm.provider :virtualbox do |virtualbox, override|
    virtualbox.gui = true
    virtualbox.customize ["modifyvm", :id, "--cpus", 2]
    virtualbox.customize ["modifyvm", :id, "--audiocontroller", "hda"]
    virtualbox.customize ["modifyvm", :id, "--memory", 8192]
    virtualbox.customize ["modifyvm", :id, "--vram", 128]
  end

  config.vm.provision "shell", inline: "/bin/sh /home/vagrant/provision/provision.sh"
end
