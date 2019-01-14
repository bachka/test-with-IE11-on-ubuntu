#!/usr/bin/env sh

now=`date +"%m-%d-%Y%T"`

sudo apt-get update
sudo apt-get install zip unzip -y
cd /home/$USER/Downloads
curl https://az792536.vo.msecnd.net/vms/VMBuild_20180102/VirtualBox/IE11/IE11.Win7.VirtualBox.zip --output IE11.Win7.VirtualBox.zip
unzip  IE11.Win7.VirtualBox.zip
sudo apt-get install virtualbox install virtualbox-ext-pack -y
vboxmanage import 'IE11 - Win7.ova'
vboxmanage snapshot 'IE11 - Win7' take "Snapshot taken on $NOW" --description 'This virtual machine expires after 90 days after activation. We did a snapshot before, just use it to roll back to before activation. The password to your VM is "Passw0rd!". Finished to install Virtualbox! Start your VM, install on Windows Virtualbox Extension, Update Windows and install Security Essentials then you are ready to test with IE11! After all shutdown VM and increase Video Memory at least to 64 MiB (for good full screen resolution).'
rm "IE11 - Win7.ova"
rm IE11.Win7.VirtualBox.zip
vboxmanage list vms
vboxmanage snapshot 'IE11 - Win7' list