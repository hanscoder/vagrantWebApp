VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	config.vm.box = "precise64"
	config.vm.box_url = "http://files.vagrantup.com/precise64_vmware.box"

	config.vm.network :forwarded_port, guest: 8080, host: 8080

	config.vm.provision :shell do |shell|
		shell.inline = "mkdir -p /etc/puppet/modules;
				puppet module install willdurand/nodejs"
	end

	config.vm.provision :puppet do |puppet|
	    puppet.manifests_path = "puppet/manifests"
	    puppet.module_path = "puppet/modules"
	    puppet.manifest_file  = "init.pp"
	    puppet.options="--verbose --debug"
	  end

end
