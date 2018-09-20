Vagrant.configure("2") do |config|

  # define provider configuration
  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, "--uartmode1", "disconnected" ]
    v.memory = 1024
  end

  # define a VM machine configuration
  config.vm.define "raddit-app" do |app|
    app.vm.box = "ubuntu/xenial64"
    app.vm.hostname = "raddit-app"
    # copy files
    app.vm.provision "file", source: "~/iac/raddit-app", destination: "~/raddit-app"
    app.vm.provision "shell", 
      inline: "cp -r /home/vagrant/raddit-app /srv/raddit-app"
    # use port forwarding make application accessible on localhost
    app.vm.network "forwarded_port", guest: 9292, host: 9292
    # run ansible
    app.vm.provision "ansible" do |ansible|
      ansible.playbook = "ansible/configuration.yml"
    end
  end

  # ssh settings
  config.ssh.insert_key = false
  config.vm.provision "file", source: "~/.ssh/vagrant_key.pub", destination: "~/.ssh/authorized_keys"
  config.ssh.private_key_path = ["~/.vagrant.d/insecure_private_key","~/.ssh/vagrant_key"]

end
