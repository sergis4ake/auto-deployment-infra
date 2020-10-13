#/bin/bash!

ansible-playbook site.yml -i environments/dev --tags "base"
