# -*- mode: ruby -*-
# vi: set ft=ruby :

box = 'softcover-vagrant-arch64'
ram = '1024'
hostname = 'softcover-vagrant'
url = 'http://downloads.sourceforge.net/project/softcover-vagrant/softcover-vagrant-arch64.box'

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.network "public_network"
  config.vm.network "forwarded_port", guest: 4000, host: 4000
  config.vm.box = box
  config.vm.hostname = hostname
  config.vm.box_url = url

  #on windows
  # config.vm.synced_folder ".", "/vagrant", disabled: true
  # trigger.after :up, { :execute => "value", ... }

  config.vm.provider "virtualbox" do |v|
    v.customize [
      'modifyvm', :id,
 #     '--name', hostname,
      '--memory', ram
    ]
  end

end
