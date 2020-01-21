---
author: Valdecir Carvalho
date: 2015-03-28 07:08:41+00:00
draft: false
title: Como instalar VMware Tools em um servidor Ubuntu por linha de comando
type: post
url: /como-instalar-vmware-tools-em-um-servidor-ubuntu-por-linha-de-comando/
categories:
- Blog
post_format:
- Nota
tags:
- blog vmware
- como-instalar
- homelab
- homelaber
- how-to
- instalação vmware tools
- instalação-vmware-tools-ubuntu-server
- ubuntu
- vblogs
- virtualização
- vmware
- vmware blog
- VMware Lab Grátis
- vmware-tools
---

Olá HomeLabers!

Essa semana estava subindo uma nova VM no meu ambiente e aproveitei para documentar o passo a passo de como instalar o VMware Tools em um servidor Ubuntu por linha de comando.

![instalaçao-vmware-tools-no-ubuntu-server-0](/imagens/2015/03/instalaçao-vmware-tools-no-ubuntu-server-0.jpg)


<!-- more -->

Vamos lá:

Selecione a VM que onde você quer instalar o VMware Tools, clique com o botão direito e escolha a opção "Open Console"

![instalaçao-vmware-tools-no-ubuntu-server-1](/imagens/2015/03/instalaçao-vmware-tools-no-ubuntu-server-1.jpg)










Clique no men VM --> Guest --> Install/Upgrade VMware Tools

![instalaçao-vmware-tools-no-ubuntu-server-2](/imagens/2015/03/instalaçao-vmware-tools-no-ubuntu-server-2.jpg)










Acesse seu servidor com o Putty ou via Console

Faça o login no seu servidor

Entre no modo sudo (administração)


    
     sudo su



Atualize o sistema operacional


    
    apt-get update -y
    apt-get upgrade -y
    



Crie um diretório para montar o cd do vmtools


    
    mkdir -p /media/cdrom



Monte o ISO do VMware Tools


    
    mount /dev/cdrom /media/cdrom



Você deve ver a mensagem: _mount: block device /dev/sr0 is write-protected, mounting read-only_

Copie o arquivo .tar do vmtools para o diretório temporario (/tmp)


    
    cp -v /media/cdrom/VM*.tar.gz /tmp/



Descompacte o arquivo tar


    
    tar xzvf /tmp/VM*.tar.gz



Crie o diretorio /lib64 para evitar um possível erro do Ubuntu


    
    mkdir -p /usr/lib64



Execute o script de instalação. A opção -d automaticamente responde sim para todas as perguntas e faz a instalação padrão.


    
    ./vmware-tools-distrib/vmware-install.pl -d



Remova os arquivos temporários da instalação


    
    rm -r -f -v vmware-tools-distrib/



Reinicie o servidor


    
    reboot



Valide a instalação checando no cliente do vsphere o status do VMware Tools

![instalaçao-vmware-tools-no-ubuntu-server-3](/imagens/2015/03/instalaçao-vmware-tools-no-ubuntu-server-3.jpg)






Se funcionou para você, deixe o seu recado nos comentários.

É isso Homelabers! Fico por aqui e espero que vocês tenham gostado. Até o próximo post e não se esqueça de deixar o seu comentário no post, seguir o HomeLaber no [Twitter](https://twitter.com/homelaber) (@Homelaber) e curtir a nossa página no [Facebook](https://www.facebook.com/homelaber) (fb.com/homelaber) para ficar sempre atualizado com as novidades do blog.
