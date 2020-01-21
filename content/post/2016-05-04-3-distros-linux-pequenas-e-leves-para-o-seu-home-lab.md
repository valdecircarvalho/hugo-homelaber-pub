---
author: Valdecir Carvalho
date: 2016-05-04 14:00:43+00:00
draft: false
title: 3 distros Linux pequenas e leves para o seu home lab
type: post
url: /3-distros-linux-pequenas-e-leves-para-o-seu-home-lab/
categories:
- Blog
tags:
- '#vDM30in30'
- '#vDM30in30BR'
- damm small linux
- distro
- distro linux leve
- dsl
- homelab
- homelab vmware
- leve
- Lightweight Linux distribution
- linux
- linux pequeno
- pequena
- puppy linux
- small linux
- tiny core linux
- vm linux
- vmware
---

Olá Homelabers!

Nesse post vou falar sobre algumas distribuições (distro) Linux bem pequenas para aqueles momentos onde você precisa apenas fazer alguns testes seu lab, mas não quer (ou não pode) subir um SO (Sistema Operacional) grande e pesado.

Eu costumo usar bastante essas distros quando preciso testar redes (interconexão de uma rede com outra) e também testes de vMotion e HA.

Essas distros linux são simples, leves e não consomem muitos recursos de disco, memória ou processador.

Vamos lá?

![fat-penguin](/imagens/2016/05/fat-penguin-e1462411923638.png)


<!-- more -->

[TinyCore Linux](http://tinycorelinux.net/intro.html)

Uma das versões mais conhecidas. Atualmente no release 7.0,  é apresentada em 3 versões:

Core - (11 MB) - Versão reduzida, apenas interface de texto (tela preta).

TinyCore - (16 MB) - Versão normal, com interface gráfica

CorePlus - (106 MB) - Versão completa, com interface gráfica e com alguns programas simples pré-instalados.

Nos meus testes eu consegui subir uma VM do TinyCore com apenas 256Mb de memória. Tentei subir com 128Mb e não deu certo. De qualquer maneira, é uma VM bem pequena para um sistema totalmente funcional.

Link para download: [http://tinycorelinux.net/downloads.html](http://tinycorelinux.net/downloads.html)

![Tela Tiny Core Linux](/imagens/2016/04/tiny-core-linux.png)


Tela Tiny Core Linux

[Puppy Linux](http://puppylinux.org/)

Outra distribuição bastante conhecida e antiga. A imagem é bem pequena, variando entre 100Mb e 250Mb com a versão completa já com o OpenOffice instalado.

Nos meus testes, não consegui subir uma VM com menos de 256Mb de RAM.

[Download versão 6.3](ftp://ftp.vcu.edu/pub/gnu_linux/puppylinux/puppy-slacko-6.3.0/64/slacko64-6.3.0.iso)

[caption id="attachment_1341" align="aligncenter" width="800"]![Tela PuppyLinux](/imagens/2016/05/PuppyLinux-ScreenShot.png)
Tela PuppyLinux[/caption]

[DammSmallLinux (DSL)](http://www.damnsmalllinux.org/)

Mais uma distribuição clássica e que já está ai há muitos anos (desde 2005), 11 anos para ser exato.

A versão mais recente é a 4.11 e o download tem 50Mb. Nos meus testes, consegui subir uma VM com 256Mb de memória e rodou liso.

Link para download: [http://www.damnsmalllinux.org/download.html](http://www.damnsmalllinux.org/download.html)

[caption id="attachment_1350" align="aligncenter" width="800"]![Damm Small Linux](/imagens/2016/05/dsl-4.2.x.jpg)
Damm Small Linux[/caption]

Vou deixar aqui um link da Wikipedia, onde você poderá conferir dezenas de outras distribuições pequenas e leves para o seu home lab.

[https://en.wikipedia.org/wiki/Lightweight_Linux_distribution](https://en.wikipedia.org/wiki/Lightweight_Linux_distribution)

Em resumo, são 3 distribuições bastante sólidas e leves, que sobem liso com 256MB de memória RAM e ajudam muito no home lab para realização de testes.

![im_fat_but_at_least_im_not_a_window](/imagens/2016/05/im_fat_but_at_least_im_not_a_window.jpg)


Deixe nos comentários sua opinião sobre essas distribuições linux. Se você já usou ou usa alguma delas ou comente se você usa alguma outra que não apareceu aqui!

Edit: Depois que publiquei esse post, fiquei pensando, em tempos de Containers, Docker, etc... será que essas imagens ainda são utilizadas? Comenta ai...

Até o próximo post!
