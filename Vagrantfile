

Vagrant.configure("2") do |config|
    
    config.vm.define "awslabsiac" do |awslabsiac|
        awslabsiac.vm.box = "ubuntu/bionic64"
        awslabsiac.vm.network "private_network", ip: "192.168.50.10"
        awslabsiac.vm.hostname = "awslabsiac"
        config.vm.synced_folder ".", "/share"
        awslabsiac.vm.provider "virtualbox" do |vb|
            vb.customize ["modifyvm", :id, "--name", "awslabsiac"]
        end
        
        awslabsiac.vm.provision "shell" , inline: <<-SHELL
        echo '*** Install Ansible ***'
        sudo apt-get install software-properties-common -y
        sudo apt-add-repository ppa:ansible/ansible -y
        sudo apt-get update -y
        sudo apt-get install ansible -y
        echo 'export ANSIBLE_HOST_KEY_CHECKING=False' >> /home/vagrant/.bashrc
        echo '*** Install Terraform ***'
        sudo apt-get install wget -y
        sudo apt-get install unzip -y
        wget https://releases.hashicorp.com/terraform/0.12.12/terraform_0.12.12_linux_amd64.zip
        sudo unzip ./terraform_0.12.12_linux_amd64.zip -d /usr/local/bin/
        echo '*** Install AWS Client ***'
		sudo apt install awscli -y
		SHELL
    end

end