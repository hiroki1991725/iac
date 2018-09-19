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
  end

  # ssh settings
  config.ssh.insert_key = false
  config.vm.provision "file", source: "~/.ssh/vagrant_key.pub", destination: "~/.ssh/authorized_keys"
  config.ssh.private_key_path = ["~/.vagrant.d/insecure_private_key","~/.ssh/vagrant_key"]
end
