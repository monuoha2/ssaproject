Vagrant.configure("2") do |config|
	config.vm.box = "bento/centos-7.6"
	config.vm.define "jenkins" do |jenkins|
		jenkins.vm.hostname = "jenkins.ssaproject.com"
		jenkins.vm.network "private_network",ip:"1.2.3.4"
		jenkins.vm.provision "ansible" do |ansible|
			ansible.playbook = "playbooks/jenkins.yml"
		end
	end
	config.vm.define "rocket-chat" do |rocket|
		rocket.vm.box = "bento/centos-7.6"
		rocket.vm.hostname = "rocket-chat.ssaproject.com"
		rocket.vm.network "private_network",ip:"1.2.3.5"
		rocket.vm.provision "ansible" do |ansible|
			ansible.playbook = "playbooks/rocket-chat.yml"
			#ansible.tags = "execute"
		end
	end
	config.vm.define "gitlab" do |gitlab|
		gitlab.vm.hostname = "gitlab.ssaproject.com"
		gitlab.vm.network "private_network",ip:"1.2.3.6"
		gitlab.vm.provider "virtualbox" do |v|
			v.cpus = 2
			v.memory = 2048
		end
		gitlab.vm.provision "ansible" do |ansible|
			ansible.playbook = "playbooks/gitlab.yml"
		end
	end
end
