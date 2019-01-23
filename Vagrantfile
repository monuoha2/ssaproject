Vagrant.configure("2") do |config|
	config.vm.box = "bento/centos-7.6"
	config.vm.define "jenkins" do |jenkins|
		jenkins.vm.hostname = "jenkins-server.local"
		jenkins.vm.network "private_network", ip: "1.2.3.4"
		jenkins.vm.provision "ansible" do |ansible|
			ansible.playbook = "roles/jenkins.yml"
			#ansible.tags = "execute"
		end
	end
	config.vm.define "rocket" do |rocket|
		rocket.vm.box = "bento/centos-7.6"
		rocket.vm.hostname = "rocket-server.local"
		rocket.vm.network "private_network",ip:"1.2.3.5"
		rocket.vm.provision "ansible" do |ansible|
			ansible.playbook = "roles/rocket-chat.yml"
			#ansible.tags = "execute"
		end
	end
	config.vm.define "gitlab" do |gitlab|
		gitlab.vm.hostname = "gitlab-server.local"
		gitlab.vm.network "private_network",ip:"1.2.3.6"
		gitlab.vm.provision "ansible" do |ansible|
			ansible.playbook = "roles/gitlab.yml"
			#ansible.tags = "execute"
		end
		gitlab.vm.provider "virtualbox" do |v|
			v.cpus = 2
			v.memory = 2048
		end
	end
   config.vm.define "vault" do |vault|
		vault.vm.hostname = "vault-server.local"
		vault.vm.network "private_network",ip:"1.2.3.7"
		vault.vm.provision "ansible" do |ansible|
			ansible.playbook = "roles/vault.yml"
			#ansible.tags = "execute"
		end
	end
end
