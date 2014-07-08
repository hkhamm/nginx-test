# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    # Setup the VM
    config.vm.box = "ubuntu/trusty64"
    config.vm.box_url = "https://vagrantcloud.com/ubuntu/trusty64"
    # Setup port forwarding
    config.vm.network :forwarded_port, host: 8001, guest: 8001
    config.vm.network :forwarded_port, host: 8000, guest: 8000
    config.vm.network :forwarded_port, host: 8080, guest: 80
    # Install nginx
    config.vm.provision "ansible" do |ansible|
        ansible.playbook = "main.yml"
        ansible.sudo = true
    end
end
