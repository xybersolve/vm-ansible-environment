Vagrant.configure("2") do |config|

  config.vm.define "ansible" do |ansible|
    ansible.vm.box = "ubuntu/trusty64"
    ansible.vm.hostname = "ansible"
    ansible.vm.network "private_network", ip: "192.168.40.10"
    ansible.vm.provision "shell", path: "ansible-provision.sh"   
  end
  
  config.vm.define "web" do |web|
    web.vm.box = "nrel/CentOS-6.5-x86_64" 
    web.vm.hostname = "web"
    web.vm.network "private_network", ip: "192.168.40.20"
    web.vm.network "forwarded_port", guest: 80, host: 8181
  end

  config.vm.define "db" do |db|
    db.vm.box = "nrel/CentOS-6.5-x86_64"
    db.vm.hostname = "db"
    db.vm.network "private_network", ip: "192.168.40.30"
  end

end
