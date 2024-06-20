## **Ansible Installation**

- Ansible is designed to run on Unix/Linux systems, therefore windows systems aren’t
supported for the control node.
- Ansible is python based and therefore the control node and the managed nodes need to
have python2 or python3 installed on them.

- Ansible can be installed in three ways:
  . Using yum or apt
  . Using pip
  . Using compile file
https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html

## **Installing Ansible on Ubuntu**
#
  $ sudo adduser ansible \
  $ echo "ansible ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/ansible \
  $ sudo hostnamectl set-hostname asible \
  $ sudo su - ansible \
  $ sudo apt install python3 \
  $ sudo apt update \
  $ sudo apt install software-properties-common \
  $ sudo apt-add-repository --yes --update ppa:ansible/ansible \
  $ sudo apt install ansible -y
  
   $sudo apt install sshpass
   $sudo chown -R ansible:ansible /etc/ansible
   $vi /etc/ansible/ansible.cfg
............................................................................................................

## **Ansible installation on REDHAT EC2**
#
  $sudo useradd ansible \
  $sudo hostname ansible \
  $echo "ansible ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/ansible \
  $sudo su - ansible # Enable PassowrdLogin and assign password to ansible user \
  $ sudo yum install python3 -y \
  $ sudo alternatives --set python /usr/bin/python3 \
  $ sudo yum -y install python3-pip -y \
  $ pip3 install ansible --user

............................................................................................................
## **Ansible installation using pipx**
#
  $ pipx install --include-deps ansible
  $ pipx install ansible-core

you can install a specific version of ansible-core:
  $ pipx install ansible-core==2.12.3

upgrading ansible
To upgrade an existing Ansible installation to the latest released version:
  $ pipx upgrade --include-injected ansible

Installing Extra Python Dependencies
To install additional python dependencies that may be needed, with the example of installing the argcomplete python package as described below:
  $ pipx inject ansible argcomplete

Include the --include-apps option to make apps in the additional python dependency available on your PATH. This allows you to execute commands for those apps from the shell.
  $ pipx inject --include-apps ansible argcomplete

............................................................................................................

## **Ansible installation using pip**
#
check if pip is installed
  $ python3 -m pip -V

installing the latest pip directly from the Python Packaging Authority by running the following:
  $ curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
  $ python3 get-pip.py --user

Installing Ansible
Use pip in your selected Python environment to install the full Ansible package for the current user:
  $python3 -m pip install --user ansible
  
You can install the minimal ansible-core package for the current user:
  $python3 -m pip install --user ansible-core

Alternately, you can install a specific version of ansible-core:
  $python3 -m pip install --user ansible-core==2.12.3

To upgrade an existing Ansible installation in this Python environment to the latest released version, simply add --upgrade to the command above:
  $ python3 -m pip install --upgrade --user ansible



