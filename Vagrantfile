Vagrant.configure("2") do |config|
	config.vm.box = "centos/7"
	config.vm.define "jenkins" do |jenkins|
		jenkins.vm.hostname = "jenkins.ssaproject.com"
		jenkins.vm.network "private_network",ip:"1.2.3.4"
		jenkins.vm.provision "ansible" do |ansible|
			ansible.playbook = "ansible/jenkins.yml"
		end
	end
	config.vm.define "rocket-chat" do |myrocket|
		myrocket.vm.box = "bento/centos-7.6"
		myrocket.vm.hostname = "rocket-chat.ssaproject.com"
		myrocket.vm.network "private_network",ip:"1.2.3.5"
		myrocket.vm.provision "ansible" do |ansible|
			ansible.playbook = "ansible/rocket-chat.yml"
			#ansible.tags = "create-rocket-chat-user"
		end
	end
	config.vm.define "gitlab" do |gitlab_server|
		gitlab_server.vm.hostname = "gitlab.ssaproject.com"
		gitlab_server.vm.network "private_network",ip:"1.2.3.6"
		#gitlab_server.vm.provision "ansible" do |ansible|
		#	ansible.playbook = "ansible/rocket-chat.yml"
		#end
	end
end
