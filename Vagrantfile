VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	config.vm.box = "puppetlabs/ubuntu-14.04-64-puppet"
	config.vm.box_url = "https://vagrantcloud.com/puppetlabs/boxes/ubuntu-14.04-64-puppet/versions/1.0.0/providers/virtualbox.box"

	config.vm.network :forwarded_port, guest: 8080, host: 8080

	config.vm.provision :shell do |shell|
		shell.inline = "mkdir -p /etc/puppet/modules;
				puppet module install willdurand/nodejs --force"
	end

	config.vm.provision :puppet do |puppet|
	    puppet.manifests_path = "puppet/manifests"
	    # puppet.module_path = "puppet/modules"
	    puppet.manifest_file  = "init.pp"
	    puppet.options="--verbose --debug"
	  end

end
