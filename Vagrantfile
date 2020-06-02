Vagrant.configure("2") do |config|
config.vm.box = "hashicorp/bionic64"

config.vm.define "vgwordpress" do |vgwordpress|
vgwordpress.vm.box = "ubuntu/bionic64"
vgwordpress.vm.hostname = "vgwordpress"
# vgwordpress.vm.network "forwarded_port", guest: 80, host: 8080
vgwordpress.vm.network "private_network", ip: "192.168.4.5"

config.vm.provider "virtualbox" do |vgwordpress|
vgwordpress.name = "Wordpress"
vgwordpress.cpus = 2
vgwordpress.memory = "2048"
end

vgwordpress.vm.provision "shell", path: "script.sh"

end

end
