Este projeto foi desenvolvido para a disciplina de Administração de Sistemas Abertos (2025.2).
O objetivo é criar uma infraestrutura automatizada para rodar um site WordPress usando Docker,
com provisionamento feito pelo Vagrant e configuração automatizada pelo Ansible.

Pré requisitos:
Você precisa ter instalado Vagrant, VirtualBox e Ansible (no seu computador).

Passo a passo:

1. Clone o repositório

git clone https://github.com/anajulita92/projeto2.git
cd projeto2

2. Execute o Vagrant

vagrant up

3. Acesse o WordPress

Abra o navegador, vá para: http://192.168.56.131:8080 e você verá a página de instalação do WordPress.


Arquivos do Projeto:

Vagrantfile	- Cria a máquina virtual com Debian
playbook_ansible.yml	- Instala Docker e sobe os containers
docker-compose.yml -	Configura os containers WordPress, MySQL e Nginx
Dockerfile	- Cria a imagem personalizada do Nginx
nginx.conf	- Configura o balanceamento de carga

Imagem Docker personalizada:

Criei uma imagem do Nginx com: balanceamento de carga (camada 4) e ferramentas ping e curl instaladas.
Está disponível no Docker Hub: anajulita/nginx-wordpress-lb

