---
author: Valdecir Carvalho
date: 2016-04-06 07:00:23+00:00
draft: false
title: Instalação Homelab VMware 6.x - Parte 01 - Introdução
type: post
url: /instalacao-homelab-vmware-6-x-parte-01-introducao/
categories:
- Tutoriais
series:
- Instalação Homelab VMware 6.x
tags:
- blog vmware
- canal virtualização youtube
- canal youtube
- homelab
- homelab vmware
- homelaber
- how-to
- instalação home lab vmware
- instalação vmware
- instalação vmware em português
- laboratório vmware
- passo-a-passo
- tutorial vmware português
- tutorial youtube
- vblog
- video youtube
- videolog
- virtualização
- vlog
- vlog vmware
- vmware
- vmware brasil
- vmware em português
- vmware iniciante
- vmware tutorial
- vmware tutorial para iniciantes
- vmware vexpert
- vmware workstation pro
- youtube
---

Olá Homelabers!

Como [prometido](http://homelaber.com.br/acabou-o-carnaval/), estou de volta com o Reboot da série **Instalação Home lab VMware**.

E desta vez eu vou até o final. Escolhi fazer de uma maneira diferente dessa vez, em formato de videos, para tornar a coisa mais dinâmica e <del>mais fácil</del> (para vocês) seguirem a série.

Eu gosto de texto, posts longos e cheios de figuras (como os blogs da década passada), mas o mundo mudou. A nova geração (vocês) preferem videos e não o antigo e ultrapassado (será) textão. E como eu sou um cara "antenado" e "[prafrentex](http://s.dicio.com.br/prafrentex.jpg)" resolvi embarcar nessa também.

![Instalação Homelab VMware 6.x](/imagens/2016/04/homelab-serie-reboot.png)


Não vou deixar de lado os posts (com texto e figuras) do blog para produzir apenas videos, mas os videos serão muito mais frequentes aqui. Dito isso, chega de enrolação e vamos lá:<!-- more -->



## Video 1 - Introdução



![Instalação Homelab VMware 6 - Parte 1 - Introdução - Slide002](/imagens/2016/04/Instalação-Homelab-VMware-6-Parte-1-Introdução-Slide002.jpg)


Nessa série vamos apresentar a instalação completa de um ambiente VMware sendo executado diretamente do VMware Workstation Pro. Você poderá cria esse laboratório no seu desktop ou notebook, sem a necessidade de um “servidor”.

Vamos trabalhar com um cenário fictício, onde você é o SysAdmin de uma empresa que irá implantar uma solução VMware para virtualização dos servidores físicos atualmente instalados.

Nesse video você verá os seguintes tópicos:




  * Os pré-requisitos para a instalação do nosso lab,
  * O cenário atual,
  * O cenário futuro,
  * As premissas do projeto e
  * Apresentação dos próximos passos.




### Pré-Requisitos:



![Hardware: Computador  com no mínimo 8GB de memória RAM (16GB ou mais é recomendado) > 300GB de espaço livre no HD (recomendado um HD separado para as VMs) Software: VMware Workstation Pro VMware ESXi 6.x VMware vCenter 6.x Microsoft Windows Server 2012 R2 Datacenter Microsoft Windows 7 Professional Linux Ubuntu Server](/imagens/2016/04/Instalação-Homelab-VMware-6-Parte-1-Introdução-Slide007.jpg)


Vamos utilizar a versão de avaliação de todos os software aqui listados, então se você não tem acesso aos software de forma legal ([já expliquei aqui como conseguir softwares para os eu home lab sem ter de recorrer a pirataria.](http://homelaber.com.br/como-montar-um-homelab-software/)) utilize as versões de avaliação. Para facilitar as coisas, eu vou deixar no final do post, um link onde você poderá fazer o download de TODOS os programas e software que utilizaremos ao longo da série.

Falando em Hardware, eu estou utilizando [aquele notebook que<del> comprei</del> fiz rolo recentemente](http://homelaber.com.br/homelab-movel-thinkpad-w510/). Para quem não lembra é um Lenovo W510 - Intel i7 com 32Gb de RAM e 2 SSDs.



### Cenário Atual:



Eu gosto sempre de trabalhar com cenários fictícios, pois acredito que dessa maneira fica mais fácil apresentar (e pensar) no problema e também mais divertido.

![Você trabalha como SysAdmin em uma empresa de médio porte chamada FIRMALABS e a sua infraestrutura hoje é composta por servidores antigos, sem garantia e sem suporte do fabricante. Você enfrenta problemas frequentes de quedas e paradas dos sistemas durante o dia e o seu trabalho consiste em apagar incêndios e manter o ambiente funcionando da melhor maneira possível. A sua diretoria aprovou um orçamento para o refresh tecnológico de sua infraestrutura e você será o responsável pelo projeto. Foi decidido que todos os servidores físicos serão substituídos por um ambiente virtualizado baseado nos produtos VMware. A arquitetura de rede, no momento será mantida, portanto está fora do escopo do projeto.](/imagens/2016/04/Instalação-Homelab-VMware-6-Parte-1-Introdução-Slide008.jpg)


![Instalação Homelab VMware 6 - Parte 1 - Introdução - Slide009](/imagens/2016/04/Instalação-Homelab-VMware-6-Parte-1-Introdução-Slide009.jpg)


![Instalação Homelab VMware 6 - Parte 1 - Introdução - Slide010](/imagens/2016/04/Instalação-Homelab-VMware-6-Parte-1-Introdução-Slide010.jpg)


![Instalação Homelab VMware 6 - Parte 1 - Introdução - Slide011](/imagens/2016/04/Instalação-Homelab-VMware-6-Parte-1-Introdução-Slide011.jpg)




### Cenário Futuro:



Esse é o cenário que iremos chegar ao final da série. Claro que mudanças ao longo do projeto poderão acontecer, como acontecem na grande maioria dos projetos. Mas esse é o nosso NORTE.

![Cenário Futuro](/imagens/2016/04/Instalação-Homelab-VMware-6-Parte-1-Introdução-Slide012.jpg)




### Premissas do Projeto:





### ![Instalação Homelab VMware 6 - Parte 1 - Introdução - Slide013](/imagens/2016/04/Instalação-Homelab-VMware-6-Parte-1-Introdução-Slide013.jpg)






### Próximos Passos:



No próximo video, iremos finalmente botar a mão na massa e começar com a instalação do VMware Workstation e do nosso primeiro host ESXi.

![Instalação Homelab VMware 6 - Parte 1 - Introdução - Slide014](/imagens/2016/04/Instalação-Homelab-VMware-6-Parte-1-Introdução-Slide014.jpg)


Novamente, faça o download dos arquivos. Se a sua internet for lenta, deixe baixando ou faça o download ao menos dos arquivos que iremos utilizar no próximo video.

É só acessar o link que está no final do post (uma pasta compartilhada no site mega.co) e baixar os arquivos abaixo. **Update:** _Ouvi dizer que o Mega.co está "limitando" o volume de downloads agora, então mais uma razão para você começar a fazer os downloads o quanto antes._

![arquivos-download-mega-lab-vmware](/imagens/2016/04/arquivos-download-mega-lab-vmware.png)


Instalador do ESXi: VMware-VMvisor-Installer-201507001-2809209.x86_64.iso - (360Mb)

Instalador do VMware Workstation: VMware-workstation-full-12.1.0-3272444.exe (300Mb)

[su_box title="Links para Download:" style="glass" box_color="#FF0000"]

**[ http://bit.ly/1MRvF2f ](http://bit.ly/1MRvF2f) **
**_Download PPT apresentação >> [ http://bit.ly/1qtsBPM ](http://bit.ly/1qtsBPM) **
**_Download ISO (mega.co) >> [ http://bit.ly/1TB8tXt ](http://bit.ly/1TB8tXt) **
[/su_box]



### Pegue a sua pipoca e curta o filme :)



![Optimized-toystoryandpopcorn-106487](/imagens/2016/04/Optimized-toystoryandpopcorn-106487-e1459926498116.jpeg)


[su_youtube_advanced url="https://youtu.be/uBcU8h2jmCA" width="900" height="600" rel="no" modestbranding="yes" theme="light" https="yes" wmode="transparent"]

É isso pessoal! Termina aqui mais um post/video. Peço a vocês que deixe seus comentários no post,[ assine o nosso canal no YouTube](http://bit.ly/youtubehomelaber) e [curta a nossa página no Facebook](http://facebook.com/homelaber). O seu feedback é muito importante para mim, pois estou fazendo esse trabalho de coração e desde o inicio a ideia foi sempre tentar criar conteúdo de qualidade em Português.

Até a próxima!
