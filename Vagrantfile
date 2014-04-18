$script = <<SCRIPT
echo "pre-provisioning begins..."
date > /etc/vagrant_provisioned
#echo " updating puppet."
#/vagrant/puppet/upgrade_puppet.sh
#echo " updating missing packages."
#apt-get update --fix-missing
echo "pre-provisioning ends..."
SCRIPT

Vagrant.configure("2") do |config|

################################
# common
#
  config.vm.provision "shell", inline: $script

################################
#
# devops
  config.vm.define "devops" do |devops|
    devops.vm.provider "virtualbox" do |v|
      v.memory = 512
      v.name = "devops"
    end
    devops.vm.box = "FScentOS"
    devops.vm.hostname = "devops.local"
    devops.vm.network :private_network, ip: "192.168.168.100"
    devops.vm.network :forwarded_port, guest: 80, host: 8000
    devops.vm.provision :puppet do |puppet|
      puppet.module_path = "puppet/modules"
      puppet.manifests_path = "puppet/manifests"
      puppet.manifest_file = "devops.pp"
      puppet.options = ["--pluginsync","--verbose"]
      puppet.hiera_config_path = "puppet/hiera.yaml"
      puppet.working_directory = "/vagrant/puppet"
    end
  end
end
