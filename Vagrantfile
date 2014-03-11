# -*- mode: ruby -*-
# vi: set ft=ruby :

box = 'arch64-base'
ram = '512'
hostname = 'softcover-vagrant'

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.network "forwarded_port", guest: 4000, host: 4000

  config.vm.box = box
  config.vm.hostname = hostname

  config.vm.provider "virtualbox" do |v|
    v.customize [
      'modifyvm', :id,
      '--name', hostname,
      '--memory', ram
    ]
  end

end
