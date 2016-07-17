# ansible-update-alternatives
* * *

## Description

Sets update-alternatives based on a list of items. The first path found amongst the specified is the used. If no path is found no change is done.

Works with ansible_os_family in ['Debian', 'RedHat'].

On Debian family OS it uses update-alternatives.

On RedHat family OS it exports the environment variable {{ item.name|upper() }} on file /etc/profile.d/{{ name }}.sh. On the example below it would create the file /etc/profile.d/editor.sh with the contents "export EDITOR=/bin/vi" (if it is true that the file /bin/vi existed).

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
