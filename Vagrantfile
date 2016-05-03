# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
    config.vm.box = "debian/jessie64"

    config.vm.network "private_network", ip: "192.168.60.10"
    config.vm.network "forwarded_port", guest: 80, host: 8080
    config.vm.hostname = "training"

    #config.vm.synced_folder "planet/", "/srv/venus/planet.plone.org"

    config.vm.provider "virtualbox" do |vb|
        vb.customize ["modifyvm", :id, "--ioapic", "on"  ]
        vb.customize ["modifyvm", :id, "--cpus"  , "2"   ]
        vb.customize ["modifyvm", :id, "--memory", "1024"]
        vb.customize ["modifyvm", :id, "--name", "training" ]
    end

    config.vm.provision "shell", path: "scripts/setup.sh"
    end
