Vagrant.configure("2") do |config|
	config.vm.box = "centos/7"
	config.vm.define "jenkins" do |jenkins|
		jenkins.vm.hostname = "jenkins.site.com"
		jenkins.vm.network "private_network",ip:"192.168.25.5"
		jenkins.vm.provision "ansible" do |ansible|
			ansible.playbook = "site.yml"
	end
	config.vm.define "gitlab" do |gitlab|
		gitlab.vm.hostname = "gitlab.site.com"
		gitlab.vm.network "private_network",ip:"192.168.25.6"
		gitlab.vm.provision "ansible" do |ansible|
			ansible.playbook = "site.yml"
	end
	config.vm.define "rocketchat" do |rocket|
		rocket.vm.hostname = "rocket-chat.site.com"			
		rocket.vm.network "private_network",ip:"192.150.25.7"
		rocket.vm.provision "ansible" do |ansible|
			ansible.playbook = "site.yml"
	end
end
