Vagrant.configure("2") do |config|

  config.vm.define "ansible" do |ansible|
    ansible.vm.box = "ubuntu/trusty64"
    ansible.vm.hostname = "ansible"
    ansible.vm.network "private_network", ip: "192.168.33.10"
  end
  
  config.vm.define "web" do |web|
    web.vm.box = "nrel/CentOS-6.5-x86_64" 
    web.vm.hostname = "web"
    web.vm.network "private_network", ip: "192.168.33.20"
    web.vm.network "forwarded_port", guest: 80, host: 8080
  end

  config.vm.define "db" do |db|
    db.vm.box = "nrel/CentOS-6.5-x86_64"
    db.hostname = "database"
    web.vm.network "private_network", ip: "192.168.33.30"
    web.vm.network "forwarded_port", guest: 80, host: 8080
  end

end
