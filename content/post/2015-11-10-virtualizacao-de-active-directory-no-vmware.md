---
author: Valdecir Carvalho
date: 2015-11-10 18:00:08+00:00
draft: false
title: Virtualização de Active Directory no VMware
type: post
url: /virtualizacao-de-active-directory-no-vmware/
categories:
- Blog
tags:
- active directory
- ad
- ADDS
- domain controller
- ds
- microsoft
- Microsoft Active Directory Domain Services
- virtualização de AD
- virtualizar ad
- vmware
---

Olá Homelabers!

Nesse post vou falar sobre um assunto que ainda é um tabú em qualquer projeto de virtualização: Virtualizar o Active Directory ( e aqui estamos falando basicamente do Microsoft Active Directory Domain Services) ou manter em um servidor físico.![logo-active-directory-720](/imagens/2015/11/logo-active-directory-720.png)
Lá atrás haviam questões técnicas para evitar essa prática, mas com o passar do tempo e a evolução do VMware e também da tecnologia atual do Windows Server 2012, esse assunto foi totalmente resolvido e hoje não existem motivos para deixar de aproveitar os benefícios da virtualização.<!-- more -->



<blockquote>_Muitos departamentos de TI ainda relutam em virtualizar completamente os controladores de domínio (Domain Controllers - AD DS). A maioria das organizações mais conservadoras têm uma aversão absoluta para a virtualização de DCs, enquanto outras organizações escolhem virtualizar uma parte do ambiente AD DS e manter uma parte em hardware físico. Os dados empíricos indicam que a causa desta oposição a virtualização de DCs é uma combinação de fatos históricos, desinformação, falta de experiência em virtualização ou medo do desconhecido._</blockquote>



A VMware publicou em 2004 - que ainda está bastante atual - um paper  chamado "_**Virtualizing Active Directory Domain Services On VMware vSphere**_" onde é abordado a fundo todos os aspectos técnicos para acabar com esse mito sobre a virtualização de ADs.

Este ano eu participei de um projeto la na FIRMA onde essa questão foi levantada e confesso que eu também tinha a ideia de que era "mais seguro" manter ao menos um AD em hardware físico, mas depois de estudar bastante sobre o tema, procurar informações, conversar com especialistas e colegas, acabamos por definir que os ADs seriam todos virtuais e assim estão hoje.

Portanto, se você ainda estiver em dúvida sobre virtualizar ou não o seu AD, pode ir sem medo :)

O documento pode ser acessado nesse [link](https://blogs.vmware.com/apps/2014/01/just-published-virtualizing-active-directory-domain-services-on-vmware-vsphere.html). Eu também baixei o documento e disponibilizei para [download](/imagens/2015/11/Virtualizing-Active-Directory-Domain-Services-on-VMware-vSphere.pdf) aqui no blog (em Inglês - PDF 2Mb)

E pesquisando mais sobre o assunto, encontrei no [SlideShare](http://pt.slideshare.net/) 4 apresentações que falam sobre o tema. Vale a pena dar uma olhada.

[slideshare id=35989102&doc=vapp5618formattedv3-140617172006-phpapp02]

[slideshare id=46545854&doc=vapp1340formatted2v3-150401114217-conversion-gate01]

[slideshare id=15749215&doc=12bestpracticesforvirtualizingactivedirectorydcs-121224064602-phpapp02]

[slideshare id=12716050&doc=wptop12best-practices-for-virtualizing-active-directory-domain-controllersgreg-shields-120427075249-phpapp02&type=d]

Se você está envolvido em um projeto de virtualização e ficou na dúvida se virtualiza ou não o seu AD, deixe o seu comentário nesse post e não se esqueça de seguir o HomeLaber no Twitter ([@Homelaber](https://twitter.com/homelaber)) e dar um LIKE a nossa página no Facebook ([fb.com/homelaber](http://fb.com/homelaber)).

![like_my_page_please__](/imagens/2015/11/like_my_page_please__.jpg)



