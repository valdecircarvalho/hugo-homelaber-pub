---
author: Valdecir Carvalho
date: 2015-04-01 15:03:17+00:00
draft: false
title: Como criar Pendrive com Boot do VMware EXSi utilizando a ferramenta Rufus
type: post
url: /criando-ubs-boot-vmware-exsi-com-rufus/
categories:
- Homelab
tags:
- blog vmware
- Boot
- como-instalar
- esxi
- homelab
- homelab vmware
- homelaber
- homelabers
- how-to
- laboratório vmware
- passo-a-passo
- Pendrive
- Rufus
- vblogs
- virtualização
- vmware
- vmware blog
- vmware boot pendrive
- vmware homelab
---

Olá Homelaber!

Nesse post, vamos aprender como criar um Pendrive com o boot do VMware ESXi para instalação do seu servidor ESXi utilizando a ferramenta Rufus. [https://rufus.akeo.ie/](https://rufus.akeo.ie/)

**![Rufus - Crie drives USB bootaveis facilmente](/imagens/2015/04/Rufus-Crie-drives-USB-bootaveis-facilmente.jpg)
**

Fazendo o boot e instalando o ESXi no pendrive, você irá economizar um HD no seu servidor ESXi e ainda terá a faciliade de quando quiser testar outra versão ou ainda outro virtualizador, não precisa gastar tempo reinstalando tudo do zero. É só dar o boot pelo pendrive e pronto.

<!-- more -->

Primeiramente, vamos fazer o download do Rufus no site [https://rufus.akeo.ie/](https://rufus.akeo.ie/) . A versão atual é a 2.1, mas sempre acesse o site para baixar a ultima versão. Eu particularmente prefiro utilizar a versão “portable”, pois não necessita de instalação, mas isso fica a seu critério.

Inicie o Rufus



![homelaber-criando-usb-boot-vmware-esxi-com-rufus-01](/imagens/2015/04/homelaber-criando-usb-boot-vmware-esxi-com-rufus-01.png)


Clique no ícone
![homelaber-criando-usb-boot-vmware-esxi-com-rufus-02](/imagens/2015/04/homelaber-criando-usb-boot-vmware-esxi-com-rufus-02.png)
e selecione o ISO do VMware



Cliquem em OK. O seu pendrive será apagado.

**![homelaber-criando-usb-boot-vmware-esxi-com-rufus-03](/imagens/2015/04/homelaber-criando-usb-boot-vmware-esxi-com-rufus-03.png)
 **

Clique em Iniciar e aguarde

![homelaber-criando-usb-boot-vmware-esxi-com-rufus-04](/imagens/2015/04/homelaber-criando-usb-boot-vmware-esxi-com-rufus-04.png)




Quando o processo finalizar (são 5 etapas), o pendrive está pronto para ser iniciado no seu servidor.

![homelaber-criando-usb-boot-vmware-esxi-com-rufus-06](/imagens/2015/04/homelaber-criando-usb-boot-vmware-esxi-com-rufus-06.jpg)


![homelaber-criando-usb-boot-vmware-esxi-com-rufus-05](/imagens/2015/04/homelaber-criando-usb-boot-vmware-esxi-com-rufus-05-1024x578.png)




Esse é um procedimento bastante fácil e tranquilo e pode ser utilizado não somente para criar pendrive de boot do VMware ESXi, mas também do Windows Server, Distros Linux, etc.

Até o próximo post e não se esqueça de deixar o seu comentário no post, seguir o HomeLaber no[Twitter](https://twitter.com/homelaber) (@Homelaber) e curtir a nossa página no [Facebook](https://www.facebook.com/homelaber) (fb.com/homelaber) para ficar sempre atualizado das novidade do blog.
