# fedora_setup

Fedora setup script

## Usage

``` sh
$ sudo dnf -y install git ansible
$ git clone https://github.com/emag/fedora_setup.git
$ ansible-playbook fedora_setup/site.yml --ask-become-pass
$ shutdown -r now
```

## Additional Setup

// TODO More automation

### Change host name

``` sh
$ hostnamectl set-hostname <hostname> --static
```

### Install VirtualBox

``` sh
$ ansible-playbook fedora_setup/virtualbox.yml --ask-become-pass
```

### Update user dirs to English

``` sh
LANG=C xdg-user-dirs-gtk-update
```

### Switch Input source key

設定 -> キーボード -> ショートカット -> タイピング

### Use Mozc

設定 -> 地域と言語 -> 入力ソース [+] -> 日本語 -> 日本語(Mozc) -> 追加

### Start Dropbox

``` sh
$ dropbox start -i
```

### Expand fedora-root size

#### lvreduce fedora-home(e.g. 300GB)

``` sh
# umout /home
# fsck.ext4 -f /dev/mapper/fedora-home
# resize2fs /dev/mapper/fedora-home 300G
# lvreduce -L 300G /dev/mapper/fedora-home
# mount -t ext4 /dev/mapper/fedora-home /home
```

#### lvextend fedora-home(e.g. 100GB)

``` sh
# lvextend -L 100G /dev/mapper/fedora-root
# resize2fs /dev/mapper/fedora-root
```

#### Refs

http://spring-mt.tumblr.com/post/18547526421/lvmでlvの拡張と削減を行う

## Test with Vagrant

If you are behind a proxy, specify your proxy host to `shell.args` in Vagrantfile.

``` ruby
config.vm.provision :shell do |shell|
  shell.path = "./vagrant_proxy.sh"
  shell.args = "http://proxy.example.com"
end
```

Password: higehige

``` sh
[host] $ vagrant up
```

``` sh
[host] $ vagrant ssh
```

``` sh
[vagrant] $ su - tanabe
```

``` sh
[vagrant] $ ansible-playbook /vagrant/site.yml
```
