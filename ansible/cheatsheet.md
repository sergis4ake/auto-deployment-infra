# Ansible Cheatsheet


## Comandos ad-hoc

ansible all -m ping -o
ansible all -m shell -a id
ansible all -m shell -a hostnamectl
ansible all -m shell -a hostname
ansible all -m copy -a 'content="Ansible Managed\n" dest=/etc/motd'


## Documentación y consultas

ansible-doc <modulo>
ansible-doc -l 
anisble-doc service <modulo>
ansible-doc service -s <modulo>


## Playbooks

 - Verificar un playbook
`ansible-playbook --syntax-check playbook.yml

 - Discriminar un host cuando se especifican en un archivo playbook, esto ejecutaría unicamente en los hosts del grupo front.
`   hosts: front:!batch`

 - Dry run (modo de pruebas)
`ansible-playbook -C playbook.yml`

 - Ejecución paso a paso
`ansible-playbook --step playbook.yml`

### group_vars y host_vars
 
 - Crear los directorios group_vars y host_vars dentro del directorio del proyecto.
 - Crear un archivo con el nombre de un servidor (de un grupo de servidores) con el nombre group_vars/grupo1 y en el archivo definir la variable.
   ```
   [grupo1:vars]
   pkg1=vim
   ```
 - Dentro del archivo group_vars/grupo1 establecer 
	```pkg1: vim```

### Ansible Fact
ansible all -m setup -a 'filter=ansible_distribution'

   
