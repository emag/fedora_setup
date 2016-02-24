# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "fedora23-cloud"
  config.vm.box_url = "https://download.fedoraproject.org/pub/fedora/linux/releases/23/Cloud/x86_64/Images/Fedora-Cloud-Base-Vagrant-23-20151030.x86_64.vagrant-virtualbox.box"

  config.vm.provision "shell", inline: <<-SHELL
    dnf -y group install "Fedora Workstation"
    useradd tanabe && echo higehige | passwd --stdin tanabe && usermod tanabe -a -G wheel
    echo "%wheel ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/wheel
    dnf -y install ansible
  SHELL

end
