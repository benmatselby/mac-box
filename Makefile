HOME ?= `$HOME`

explain:
	### Welcome
	#
	# Setup a mac
	#
	### Setup
	#
	# To use this you will require the following:
	#
	# - Brew (https://brew.sh/)
	# - Ansible (install via Brew)
	#  - $$ brew install ansible
	#
	### Installation
	#
	#  -> $$ make provision
	#
	###

provision: ansible

.PHONY: ansible
ansible:
	ansible-playbook -i ansible/hosts ansible/playbook.yml --verbose
