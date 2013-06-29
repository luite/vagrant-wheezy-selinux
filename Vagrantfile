# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "wheezy64"

  config.vm.customize ["modifyvm", :id, "--cpus", 2, "--memory", 2000, "--ioapic", "on"]

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.

  # box created with veewee:
  # veewee vbox define 'wheezy64' 'Debian-7.1.0-amd64-netboot'
  # veewee vbox build 'wheezy64'
  # veewee vbox export 'wheezy64'
  config.vm.box_url = "http://hdiff.luite.com/ghcjs/wheezy64.box"

  # Share an additional folder to the guest VM. The first argument is
  # an identifier, the second is the path on the guest to mount the
  # folder, and the third is the path on the host to the actual folder.
  # config.vm.share_folder "outputs", "/tmp/outputs", "outputs"

  # Enable provisioning with Puppet stand alone.  Puppet manifests
  # are contained in a directory path relative to this Vagrantfile.
  # You will need to create the manifests directory and a manifest in
  # the file base.pp in the manifests_path directory.
  #
  # An example Puppet manifest to provision the message of the day:
  #
  # # group { "puppet":
  # #   ensure => "present",
  # # }
  # #
  # # File { owner => 0, group => 0, mode => 0644 }
  # #
  # # file { '/etc/motd':
  # #   content => "Welcome to your Vagrant-built virtual machine!
  # #               Managed by Puppet.\n"
  # # }
  #
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "base.pp"
    puppet.module_path = "modules"
    puppet.options = "--verbose"
  end

end
