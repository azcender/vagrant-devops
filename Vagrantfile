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
# apache
  config.vm.define "apache" do |apache|
    apache.vm.provider "virtualbox" do |v|
      v.memory = 512
      v.name = "apache"
    end
    apache.vm.box = "FScentOS"
    apache.vm.hostname = "apacheserver.local"
    apache.vm.network :private_network, ip: "192.168.168.30"
#    apache.vm.network :forwarded_port, guest: 80, host: 8000
    apache.vm.provision :puppet do |puppet|
      puppet.module_path = "puppet/modules"
      puppet.manifests_path = "puppet/manifests"
      puppet.manifest_file = "apacheserver.pp"
      puppet.options = ["--pluginsync","--verbose"]
    end
  end
end
