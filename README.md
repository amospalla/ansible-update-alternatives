# ansible-update-alternatives
* * *

## Description

Sets update-alternatives.

Works with ansible_os_family in ['Debian', 'RedHat'].

On Debian family OS it uses update-alternatives. On RedHat family OS it exports the environment variable on file /etc/profile.d/{{ name }}.sh

If no file is found amongst the specifid for an item it is ignored and nothing is changed.

## Variables

Optional:

_update_alternatives_: dictionary of lists with set of alternatives (you can take a look at vars/main.yml).
```
update_alternatives:
  Debian:
    - name: editor
	  files:
	    - /usr/bin/bin.tiny
	    - /bin/nano
  RedHat:
    - name: editor
	  files:
	    - /bin/vi
		- /usr/bin/nano
```
