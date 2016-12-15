logrotate: install configure

install:
	ansible-playbook main.yml -i localhost -t install_logrotate

configure:
	cd .. && ansible-playbook logrotate/role.yml -i logrotate/localhost -t configure_logrotate
