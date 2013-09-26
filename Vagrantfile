Vagrant::Config.run do |config|
	config.vm.box = "precise32"
	config.vm.box_url = "http://files.vagrantup.com/precise32.box"

	config.vm.network :hostonly, "192.168.33.10"

	# Set the default project share to use nfs
	#config.vm.share_folder("v-web", "/vagrant/www", "./www", :nfs => true)
	#config.vm.share_folder("v-db", "/vagrant/db", "./db", :nfs => true)

	config.vm.forward_port 80, 3080
	
	
	config.vm.provision :puppet do | puppet |
		puppet.facter = { "fqdn" => "local.pyrocms", "hostname" => "www" } 
		puppet.manifests_path = "puppet/manifests"
		puppet.manifest_file  = "default.pp"
		puppet.module_path  = "puppet/modules"
	end

end
