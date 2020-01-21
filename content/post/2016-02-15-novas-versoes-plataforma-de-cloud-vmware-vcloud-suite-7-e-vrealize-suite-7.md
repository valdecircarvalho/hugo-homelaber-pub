---
author: Valdecir Carvalho
date: 2016-02-15 10:30:34+00:00
draft: false
title: 'Novas versões da plataforma de Cloud VMware:  vCloud Suite 7 e vRealize Suite
  7'
type: post
url: /novas-versoes-plataforma-de-cloud-vmware-vcloud-suite-7-e-vrealize-suite-7/
categories:
- VMware
tags:
- anúncio vmware
- Application Director
- aws
- Azure
- bi-modal IT
- blog vmware
- cloud
- Cloud Application Management
- Cloud Automation
- Cloud Management Platform
- Cloud Operations
- CMP
- como licenciar vmware
- continuous delivery
- Continuous Integration
- devops
- homelab
- homelaber
- hybrid cloud
- IaaS
- Infrastructure as a Service
- IT Business Management
- IT Outcomes
- licenciamento vmware
- Log Insight
- Management Packs
- NSX
- nuvem
- openstack
- Portable Licensing Unit
- private cloud
- public cloud
- SDDC
- software defined data center
- vblogs
- vCloud
- vCloud Director
- vCloud Suite
- vCloud Suite 7
- VIO
- vmware
- vmware blog
- vRealize
- vRealize Automation
- vRealize Business
- vRealize Code Stream
- vRealize Log Insight
- vRealize Operations
- vRealize Suite
- vRealize Suite 7
- vSAN
- vSOM
---

Olá Homelabers!

Nesse post (um pouco longo mais vale a pena ler!) vou comentar sobre as novidades que a VMware anunciou no último dia 10/03/2016.

Se segurem ai porque tem bastante coisa nova e interessante, principalmente para o mundo corporativo.

_**Apresentando as novas versões da plataforma de Cloud da VMware: VMware vCloud 7 e vRealize Suite 7**_

No último dia 10/02/2016 a VMware apresentou a nova versão dos pacotes VMware vCloud Suite 7 e vRealize Suite 7.

Toda a plataforma de Gerenciamento de Cloud da VMware (Cloud Management Platform - CPM) foi atualizada nos últimos meses e agora com o lançamento das versões 7 do vCloud Suite e do vRealize Suite essas novidades foram incorporadas aos pacotes.<!-- more -->

_**Novo pacote vRealize Suite 7:**_

Para quem não conhece o vRealize Suite é o pacote para gerenciamento de Núvem Hibrida da VMware e é composto pelos seguintes softwares:

A VMware passa agora a oferecer 3 edições do vRealize Suite:

![VMware-vRealize-Suite-7](/imagens/2016/02/VMware-vRealize-Suite-7-e1455508335364.jpg)


**Standard** - essa é uma versão que não existia na linha vRealize Suite. É o primeiro passo para empresas que desejam melhorar a eficiência operacional, performance e disponibilidade, via analises preditivas de toda infraestrutura, logs. É o que a VMware chama de **Intelligent Operations**

**Advanced** - voltada para automatização. Fornece suporte para empresas que desejam acelerar a entrega de serviços de infraestrutura. Facilitando assim o "delivery" e o "on going", oferece ainda autosserviços para usuários (como desenvolvedores que podem solicitar e criar uma VM de forma totalmente automática e com uma visão de custo). É o que a VMware chama de **Automated IT to IaaS (IT as a Service  ou TI como Serviço)**

**Enterprise** - essa versão é voltada para empresas que já utilizam ou estão implantando "DevOps" e que procuram automatizar toda a entrega e gestão de serviços de TI. É o que a VMware chama de **DevOps-Ready IT** (TI preparada para DevOps)

![vrealize-suite-lineup-linha-de-produtos-vmware-vrealize-suite](/imagens/2016/02/vrealize-suite-lineup-linha-de-produtos-vmware-vrealize-suite-e1455508658448.png)


_**Novo pacote vCloud Suite 7**_

Antes de mais nada, o vCloud Suite é a suite top de linha da VMware para gerenciamento de SDDC (Software Defined Data Center) e Hybrid Cloud (Nuvem Hibrida).

A mais significativa mudança no pacote vCloud Suite 7 foi o alinhamento com o vRealize Suite. Foi uma resposta da VMware ao feedback dos usuários e empresas.

Todos os componentes de gerenciamento de cada edição do vCloud Suite agora são exatamente iguais ao correspondente da edição do vRealize Suite.

Resumindo: o vCloud Suite é um pacote que inclui o vRealize Suite e o vSphere Enterprise Plus para vCloud.

![vmware-dgrm-vcloud-suite-editions](/imagens/2016/02/vmware-dgrm-vcloud-suite-editions-e1455508418189.png)


Lembrando que essa mudança já vale para o 1º quarto de 2016.

_**Novo modelo de licenciamento: Unidade de Licençiamento Portável ou Portable Licensing Unit (PLU).**_

Foi criado um novo modelo de licenciamento para o vRealize Suite chamado Portable Licensing Unit (PLU) que da flexibilidade para utilizar o vRealize para gerenciar tanto uma núvem baseada em ferramentas VMware "on premises) ou um hypervisor de terceiros (como por exemplo Hyper-V, Xen Server, etc) ou ainda outros "vendors" de núvem pública como Amazon AWS e Microsoft Azure. Ou seja, você que já está acostumado a utilizar os produtos VMware na sua "núvem local" vai poder gerenciar também a sua núvem privada seja ela de quem for. Genial!

A figura abaixo demonstra como funciona na prática a PLU:

![portable-license-unit](/imagens/2016/02/portable-license-unit.png)


Um PLU permite que o vRealize Suite gerencie um número ilimitado de VMs rodando em uma vSphere CPU e até 15 OSI (Operating System Intances - Instâncias de Sistemas Operacionais)  rodando em outros sistemas  Não-vSphere (Amazon AWS, vCloud vAir, Azure, etc) ou seja: 1 PLU - 1 vSphere CPU e até 15 VMs em outra Cloud ou virtualizador.

_**Novidades da versão 7 do vRealize Suite e vCloud Suite:**_




      * [vRealize Automation 7.0](https://blogs.vmware.com/management/2015/11/whats-new-vrealize-automation-7.html?src=management-blog&cid=70134000001M5td)

        * Accelerated Time to Value
        * Converged Blueprints
        * NSX Integration and Automation


      * [vRealize Business for Cloud 7.0.1](http://blogs.vmware.com/management/2016/02/changes-vrealize-business-pricing-packaging?src=management-blog&cid=70134000001M5td) <New Name>

        * Hybrid Cloud Costing
        * Advanced Showback to Lines of Business
        * Enhanced Reporting
        * Tighter Integration with vRealize Automation 7.0


      * [vRealize Operations 6.2](http://blogs.vmware.com/management/2016/02/whats-new-in-vrealize-operations-6-2.html?src=management-blog&cid=70134000001M5td)

        * Intelligent Workload Placement
        * Optimal Resource Utilization
        * Proactive Visibility


      * [vRealize Log Insight 3.3](http://blogs.vmware.com/management?p=9049?src=management-blog&cid=70134000001M5td)

        * Simplified 3rd Party App Integration
        * Server side automatic agent upgrades
        * New vRealize Log Insight for vCenter Standard




Para saber mais, visite a página dos produtos [vRealize Suite](https://www.vmware.com/products/vrealize-suite?src=management-blog&cid=70134000001M5td) e [vCloud Suite](https://www.vmware.com/products/vcloud-suite?src=management-blog&cid=70134000001M5td)

Fonte: [http://blogs.vmware.com/management/2016/02/introducing-vmware-vcloud-suite-7-vrealize-suite-7.html](http://blogs.vmware.com/management/2016/02/introducing-vmware-vcloud-suite-7-vrealize-suite-7.html)

É isso ai Homelabers! Como vocês puderam ver, a VMware também está se lançando com tudo na Cloud e ainda tem muita aguá para rolar. Esse é o futuro que já chegou!

Até a próxima.
