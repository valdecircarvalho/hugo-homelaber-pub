---
author: Valdecir Carvalho
date: 2018-01-04 08:36:53+00:00
draft: false
title: Rancher Parte 1 - Instalação e configuração
type: post
url: /rancher-parte-1-instalacao-e-configuracao/
categories:
- Blog
- Homelab
- Tutoriais
tags:
- '@Rancher_Labs'
- '#k8s'
- '#kubernetes'
- '#RancherLabs'
- awd
- blog
- como instalar rancher
- container
- devops
- docker
- instalação rancher
- rancher
- rancher labs
- rancheros
- tutorial rancher
- vSphere
---

Olá Homelabers!

Você conhece o **Rancher**?

Se você que é de infra estrutura e está querendo começar a estudar sobre containers, docker, devops, etc, uma hora ou outra vai precisar de um gerenciador de container e o[ Rancher](http://rancher.com/) é um dos melhores da atualidade.

Para quem não está familiarizado com o assunto, o Rancher é um projeto bem legal que entrega uma plataforma de gerenciamento de containers, através de uma UI (User Interface) fácil de ser compreendida e utilizada.

Nessa série de 3 posts (e vídeos), vou mostrar como criar um **lab de Rancher** para que você possa entender o seu funcionamento e ter um ponto de partida para seus estudos.

Para acessar os 3 posts da série sobre Rancher [clique aqui](http://bitly.com/rancher-lab)




      * [Rancher Parte 1 – Instalação e configuração (este post)](http://homelaber.com.br/rancher-parte-1-instalacao-e-configuracao/)
      * [Rancher Parte 2 – Instalação e configuração](http://homelaber.com.br/rancher-parte-2-instalacao-e-configuracao/)
      * [Rancher Parte 3 – Integração com VMware vSphere e Cloud Amazon AWS](http://homelaber.com.br/rancher-parte-3-integracao-com-vmware-vsphere-e-cloud-amazon-aws/)




## **O que é o Rancher?**





<blockquote>**Entenda**** o Rancher ****como**** um ****painel**** de ****controle**** e ****gerenciamento**** para ****sua ****infraestrutura**** de containers. **</blockquote>



Imagine que você quer começar a utilizar containers na sua empresa. Tudo começa pequeno - um host, alguns containers na sua máquina, etc. Mas com o tempo (bem rápido) esse ambiente vai crescendo. Você vai precisar de uma ferramenta para gerenciar esses containers. É ai que entra o Rancher.

Para quem é do mundo VMware, uma boa analogia é dizer que o Rancher é **o vCenter do Docker!**



## **A arquitetura do Lab**



![](/imagens/2018/01/Slide09-e1515049322507.jpg)


Nosso lab será composto de:




      * Rancher Mngr - 1vCPU - 2GB RAM - 20GB Disco - Ubuntu Server 16.04
      * Rancher Host-1 - 1vCPU - 2GB RAM - 60GB Disco - Ubuntu Server 16.04


Teremos ainda mais dois hosts que serão provisionados diretamente do Rancher em um ambiente VMware vSphere e mais dois hosts provisionados na AWS.

Vale lembrar que estou criando esse lab, em um ambiente VMware vSphere, mas você pode utilizar o VMware Workstation, VMware Fusion, Virtualbox ou o hypervisor de sua preferência.



## Instalando o Servidor Ubuntu Server 16.04



Esse será o nosso **Rancher Server**. Não vou detalhar aqui nesse post a instalação do Ubuntu. Se você tiver dúvidas, acesse [esse post](http://homelaber.com.br/como-instalar-e-configurar-o-linux-ubuntu-server/) e veja como fazer a instalação,



## Instalando o Docker



Nesse lab vou utilizar um script de instalação fornecido pelo time da Rancher Labs para instalar o Docker na sua versão correta. Todos os comandos abaixo devem ser executados no Rancher Server.


    
    $ sudo curl https://releases.rancher.com/install-docker/17.03.sh | sh



![](/imagens/2018/01/instalacao-rancher-1.jpg)


Esse comando faz o download de um script e inicia a instalação do Docker versão 17.03.

Ao final da instalação, você verá a seguinte tela, que mostra que o Docker versão 17.03.2-ce foi instalado e pergunta se você que executar o comando para evitar que você precise digitar "sudo" sempre que for rodando algum comando Docker. Em nosso lab, eu recomendo habilitar essa "funcionalidade" por questões práticas. Mas em seu ambiente de Produção, leia e pesquise sobre os riscos.

![](/imagens/2018/01/instalacao-rancher-2.jpg)



    
    $ sudo usermod -aG docker $USER



onde $USER é o nome do seu usuário - apenas copie e cole essa linha no seu terminal. Será necessário fazer um logout para fazer efeito ok?


    
    $ docker run hello-world



Esse comando irá criar um container para que você valide sua instalação. O resultado do comando é o apresentado abaixo:

![](/imagens/2018/01/instalacao-rancher-3.jpg)


O próximo passo, é configurar o Docker para inicializar junto com o SO, assim, se a sua VM reiniciar, o Docker será inicializado automaticamente.


    
    $ sudo systemctl enable docker





## Instalando o Rancher



Com isso feito, agora iremos fazer a "instalação" do Rancher Server. Uma das inúmeras vantagens do Rancher é que ele roda dentro de um container Docker, então para fazer sua instalação, basta executar o comando:


    
    $ docker run -d --restart=unless-stopped -p 8080:8080 rancher/server:stable



Após alguns minutos, o Rancher estará pronto para uso.

![](/imagens/2018/01/instalacao-rancher-4.jpg)




## Acessando o Rancher Server



Para acessar o Rancher, abre um browser e acesse o endereço

**http://<IP_DO_SERVIDOR>:8080**

![](/imagens/2018/01/instalacao-rancher-5.jpg)




## Configurando autenticação local no Rancher Server



A primeira configuração que você deve fazer em seu Rancher Server é configurar a forma de autenticação de acesso. O Rancher suporta diversos tipos de autenticação - Microsoft Active Directory, Azure AD, GitHub, OpenLDAP, local, etc. Em nosso lab, iremos utilizar a **autenticação local.**

Clique no menú **Admin** >> **Access Control**

![](/imagens/2018/01/instalacao-rancher-6.jpg)


Selecione a opção **LOCAL**, preencha os campos e clique no botão Enable Local Auto.

![](/imagens/2018/01/instalacao-rancher-7.jpg)


![](/imagens/2018/01/instalacao-rancher-8.jpg)


Feche o browser e abra novamente. Agora, o Rancher irá solicitar um usuário e senha para acessar o seu painel de controle.

![](/imagens/2018/01/instalacao-rancher-9.jpg)




## Próximos passos



Nesse post, você aprendeu como fazer a preparação de um servidor Ubuntu, instalando o Docker para receber o Rancher Server, instalar o Rancher Server e configurar a autenticação local. [No próximo post](http://homelaber.com.br/rancher-parte-2-instalacao-e-configuracao), irei abordar os seguintes passos:




      * Configurar o Rancher Server
      * Configurar e adicionar um host local no Rancher
      * Fazer o deploy de containers


É isso pessoal! Deixe nos comentários o que você achou do post, do assunto, do vídeo, etc. Não esqueça de compartilhar esse post com seus amigos nas sua redes sociais!



## Bonus



Vídeo com o passo a passo da parte 1 dessa série.

[embed]https://www.youtube.com/watch?v=G2NWngEdLNU[/embed]
