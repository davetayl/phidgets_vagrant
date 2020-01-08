Vagrant.configure("2") do |config|
  config.vm.box = "hebari/debian-stretch-i386"
  config.vm.box_version = "0.0.1"
  config.vm.provision "shell", path: "./provision.sh"
end