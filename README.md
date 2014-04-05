### UBUNTU - RARING/SAUCY

>sudo apt-get install git

>sudo apt-get install curl

>sudo apt-get install vagrant

>Check "Run command as login" checkbox in terminal profile. Exit and relaunch terminal application.

### OS X

>Install [git 1.8.5.2 for OS X](http://sourceforge.net/projects/git-osx-installer/files/git-1.8.5.2-intel-universal-snow-leopard.dmg/download) with defaults (admin required). 

>Install Xcode (and command-line tools) for your version of OS X (admin required). Run it once.

>Install [VirtualBox 4.3.6 for OS X](http://download.virtualbox.org/virtualbox/4.3.6/VirtualBox-4.3.6-91406-OSX.dmg) with defaults (admin required).

>Install [Vagrant 1.4.3 for OS X](https://dl.bintray.com/mitchellh/vagrant/Vagrant-1.4.3.dmg) with defaults (admin required).

### WINDOWS

>Install [git 1.8.5.2 for Windows](http://git-scm.com/download/win) with defaults.

>Install [ruby 1.9.3-p484 for Windows](http://dl.bintray.com/oneclick/rubyinstaller/rubyinstaller-1.9.3-p484.exe?direct) - add to path.

>Install [VirtualBox 4.3.6 for Windows](http://download.virtualbox.org/virtualbox/4.3.6/VirtualBox-4.3.6-91406-Win.exe) with defaults (admin required).

>Install [Vagrant 1.4.3 for Windows](https://dl.bintray.com/mitchellh/vagrant/Vagrant_1.4.3.msi) with defaults (admin required).

### COMMON - Skip rvm steps on Windows, start at creating directories below

>Install RVM:

>\curl -L https://get.rvm.io | bash -s stable --rails --autolibs=enabled

>rvm get head

>rvm install 1.9.3

>rvm reload

>rvm --default use 1.9.3

>mkdir ~/puppet_pilot

>cd ~/puppet_pilot

>git clone git@bitbucket.org:prolixalias/puppet.git

>cd puppet

>gem install bundler

>bundle install

>cd puppet

>librarian-puppet install --clean --verbose

>vagrant box add vagrant-raring64 https://bitbucket.org/prolixalias/puppet/downloads/vagrant-raring64.box

>vagrant box add precise64 http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-12042-x64-vbox4210.box

>vagrant up  # admin required on Windows for adding vbox network interface(s) and Windows firewall

