# {{ ansible_managed }}

export {{ update_alternatives_item.name|upper() }}={{ update_alternatives_alternative }}
