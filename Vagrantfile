# -*- mode: ruby -*-
# vi: set ft=ruby :

home_dir = "/home/vagrant/opensource"

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.network :forwarded_port, guest: 8181, host: 8181

  config.trigger.after :destroy do
    run "rm -rf node_modules"
    run "rm -rf oppia"
    run "rm -rf oppia_tools"
  end
end


