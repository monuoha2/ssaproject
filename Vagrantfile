Vagrant.configure("2") do |config|
	config.vm.box = "centos/7"
	config.vm.define "jenkins" do |jenkins|
		jenkins.vm.hostname = "jenkins.emwg.com"
		jenkins.vm.network "private_network",ip:"1.2.3.4"
		jenkins.vm.provision "ansible" do |ansible|
			ansible.playbook = "ansible/jenkins.yml"
		end
	end
end
