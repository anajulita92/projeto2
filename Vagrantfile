# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "debian/bookworm64"
  config.vm.hostname = "ana.silva"
  config.vm.network "private_network", ip: "192.168.56.131"
  config.ssh.insert_key = false
  
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
    vb.check_guest_additions = false
  end

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "playbook_ansible.yml"
  end
end

