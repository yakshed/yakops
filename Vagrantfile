# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/debian-7.4"

  # config.ssh.forward_agent = true

  config.vm.provision "shell", path: "bin/bootstrap-vagrant"
  config.vm.provision :puppet do |puppet|
    puppet.options = '--hiera_config=/vagrant/hiera.yaml --environment=development'# --debug --verbose'
    puppet.manifests_path = "manifests"
    puppet.module_path = ["modules", "vendor/modules"]
    puppet.manifest_file  = "site.pp"
  end

  config.vm.define "pheros" do |vmx|
    vmx.vm.hostname = 'pheros.yakshed.dev'
    vmx.vm.network :private_network, ip: "192.168.42.55"
  end

  config.vm.define "poosh" do |vmx|
    vmx.vm.hostname = 'poosh.yakshed.dev'
    vmx.vm.network :private_network, ip: "192.168.42.56"
  end

  config.vm.define "kendrax" do |vmx|
    vmx.vm.hostname = 'kendrax.yakshed.dev'
    vmx.vm.network :private_network, ip: "192.168.42.57"
  end

  config.vm.define "peladon" do |vmx|
    vmx.vm.hostname = 'peladon.yakshed.dev'
    vmx.vm.network :private_network, ip: "192.168.42.58"
  end
end
