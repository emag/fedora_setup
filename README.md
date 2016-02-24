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

### Install VirtualBox

// TODO

### Switch　Input source key

設定 -> キーボード -> ショートカット -> タイピング

### Use Mozc

設定 -> 地域と言語　-> 入力ソース [+] -> 日本語　-> 日本語(Mozc) -> 追加

### Start Dropbox

``` sh
$ dropbox start -i
```

### Expand fedora-root size

// TODO

## Test with Vagrant

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
