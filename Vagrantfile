# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

# Ansible 테스트 서버
  config.vm.define:"ansible-server" do |cfg|
    cfg.vm.box= "centos/7"
    cfg.vm.provider:virtualbox do |vb|
      vb.name= "ansible-server"
      vb.customize ["modifyvm", :id, "--cpus", 2]
      vb.customize ["modifyvm", :id, "--memory", 2048]
    end
    cfg.vm.host_name="ansible-server"
    cfg.vm.synced_folder ".", "/vagrant", type: "virtualbox"
    cfg.vm.network "private_network", ip: "192.168.56.10"
    cfg.vm.network "forwarded_port", guest: 22, host: 30110, auto_correct: false, id: "ssh"
#    cfg.vm.provision "shell",
#      inline: "ip route replace default via 192.168.56.1 dev eth1"

    cfg.vm.provision "shell",
      path: "Bootstrap.sh"
#    cfg.vm.provision "file", source: "Ansible_env_ready.yml", destination: "Ansible_env_ready.yml"
#    cfg.vm.provision "shell",
#      inline: "ansible-playbook Ansible_env_ready.yml"
  end

# Ansible 테스트 노드 1번 
  config.vm.define:"ansible-node01" do |cfg|
    cfg.vm.box= "centos/7"
    cfg.vm.provider:virtualbox do |vb|
      vb.name= "ansible-node01"
      vb.customize ["modifyvm", :id, "--cpus", 1]
      vb.customize ["modifyvm", :id, "--memory", 1024]
    end
    cfg.vm.host_name="ansible-node01"
    cfg.vm.synced_folder ".", "/vagrant", type: "virtualbox"
    cfg.vm.network "private_network", ip: "192.168.56.11"
    cfg.vm.network "forwarded_port", guest: 22, host: 30111, auto_correct: false, id: "ssh"
    cfg.vm.provision "shell",
      path: "Bootstrap_node.sh"    
  end

# Ansible 테스트 노드 2번 
  config.vm.define:"ansible-node02" do |cfg|
    cfg.vm.box= "centos/7"
    cfg.vm.provider:virtualbox do |vb|
      vb.name= "ansible-node02"
      vb.customize ["modifyvm", :id, "--cpus", 1]
      vb.customize ["modifyvm", :id, "--memory", 1024]
    end
    cfg.vm.host_name="ansible-node02"
    cfg.vm.synced_folder ".", "/vagrant", type: "virtualbox"
    cfg.vm.network "private_network", ip: "192.168.56.12"
    cfg.vm.network "forwarded_port", guest: 22, host: 30112, auto_correct: false, id: "ssh"
    cfg.vm.provision "shell",
      path: "Bootstrap_node.sh"    
  end

# Ansible 테스트 노드 3번 
  config.vm.define:"ansible-node03" do |cfg|
    cfg.vm.box= "centos/7"
    cfg.vm.provider:virtualbox do |vb|
      vb.name= "ansible-node03"
      vb.customize ["modifyvm", :id, "--cpus", 1]
      vb.customize ["modifyvm", :id, "--memory", 1024]
    end
    cfg.vm.host_name="ansible-node03"
    cfg.vm.synced_folder ".", "/vagrant", type: "virtualbox"
    cfg.vm.network "private_network", ip: "192.168.56.13"
    cfg.vm.network "forwarded_port", guest: 22, host: 30113, auto_correct: false, id: "ssh"
    cfg.vm.provision "shell",
      path: "Bootstrap_node.sh"    
  end

end
