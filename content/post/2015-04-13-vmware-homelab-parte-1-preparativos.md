---
author: Valdecir Carvalho
date: 2015-04-13 12:00:59+00:00
draft: false
title: VMware HomeLab – Parte 1 – Preparativos
type: post
url: /vmware-homelab-parte-1-preparativos/
categories:
- Tutoriais
tags:
- blog vmware
- homelab
- homelab vmware
- homelaber
- homelabers
- how-to
- instalação vmware
- laboratório vmware
- passo-a-passo
- vblogs
- virtualização
- vmware blog
- vmware homelab
---

Olá HomeLabers!

Esse é o segundo post da série VMware HomeLab e iremos falar sobre os preparativos para a instalação do nosso HomeLab.

O primeiro passo é verificar e garantir que o hardware onde será instalado o VMware ESXi atender os requisitos mínimos para a instalação. Existe um KB (2017269) da VMware indicando esses requisitos e pode ser consultado [aqui](http://kb.vmware.com/selfservice/microsites/search.do?language=en_US&cmd=displayKC&externalId=2017269). Em resumo necessitamos de:




      * CPU x86 64 bits e 2 cores
      * 2GB Memória RAM
      * 1 Placa de rede


<!-- more -->

Após garantir que o seu hardware é suportado para a instalação, o próximo passo é fazer o download do VMware ESXi através do site da VMware. [https://my.vmware.com/web/vmware/evalcenter?p=vsom](https://my.vmware.com/web/vmware/evalcenter?p=vsom)

![VMware HomeLab – Parte 1 – Preparativos_01](/imagens/2015/04/VMware-HomeLab-–-Parte-1-–-Preparativos_01-1024x500.png)


Se você não tiver uma conta no my.vmware.com, basta criar clicando em “Create an Account” e seguir o passo-a-passo no site.

![VMware HomeLab – Parte 1 – Preparativos_02](/imagens/2015/04/VMware-HomeLab-–-Parte-1-–-Preparativos_02.png)




O link correto para baixar a versão 5.5 (a que iremos utilizar nesse laboratório) é **[https://my.vmware.com/group/vmware/info?slug=datacenter_cloud_infrastructure/vmware_vsphere_with_operations_management/5_5](https://my.vmware.com/group/vmware/info?slug=datacenter_cloud_infrastructure/vmware_vsphere_with_operations_management/5_5)**

Por padrão, você será direcionado para baixar a ultima versão (6.0) mas esse não é o nosso intuito. Então, após se registrar, utilize a URL acima.

![VMware HomeLab – Parte 1 – Preparativos_03](/imagens/2015/04/VMware-HomeLab-–-Parte-1-–-Preparativos_03-1024x478.png)




Faça o download dos seguintes componentes:

**ESXi 5.5 Update 2 Driver Rollup (Includes VMware Tools) - ISO - 340 MB**

**VMware vCenter Server 5.5 Update 2d and modules - ISO - 3 GB**

Feito o download, guarde os arquivos para o próximo post, onde iniciaremos a instalação do VMware ESXi no seu Homelab.

Até o próximo post e não se esqueça de deixar o seu comentário no post, seguir o HomeLaber no [Twitter](https://twitter.com/homelaber) (@Homelaber) e curtir a nossa página no [Facebook](https://www.facebook.com/homelaber) (fb.com/homelaber) para ficar sempre atualizado das novidades do blog.


