# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "chad-thompson-VAGRANTSLASH-ubuntu-trusty64-gui"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
   config.vm.synced_folder "shared", "/tmp/shared"
  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
   config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    vb.cpus = 2
  #   # Customize the amount of memory on the VM:
    vb.memory = "4096"
   end

   config.vm.define "assVM1" do |vm1a|
      vm1a.vm.hostname = "assVM1.gac.local"
      vm1a.vm.network "public_network", ip: "192.168.1.105"
      vm1a.vm.provision "shell", path: "vm2a.sh"

    end

    config.vm.define "assVM2" do |vm2b|
      vm2b.vm.hostname = "assVM2.gac.local"
      vm2b.vm.network "public_network", ip: "192.168.1.205"
      vm2b.vm.provision "shell", path: "vm2b.sh"

   end

end
