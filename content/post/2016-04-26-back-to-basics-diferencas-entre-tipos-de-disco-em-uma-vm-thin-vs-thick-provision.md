---
author: Valdecir Carvalho
date: 2016-04-26 09:00:54+00:00
draft: false
title: 'Back-to-Basics: Diferenças entre tipos de disco em uma VM (Thin vs Thick Provision)'
type: post
url: /back-to-basics-diferencas-entre-tipos-de-disco-em-uma-vm-thin-vs-thick-provision/
categories:
- VMware
tags:
- back-to-basics
- blog vmware
- blog vmware em português
- diferenças
- home lab
- homelab
- homelab vmware
- homelaber
- laboratório vmware
- thick provisioning
- thin provisioning
- tipos de disco
- virtual machine
- virtualização
- vm
- vmware
- vmware blog
- vmware blog brasil
---

Olá Homelabers!









Hoje vou começar uma série de artigos chamada Back-To-Basics (ou De volta ao básico em bom Português). Nessa série vou escreve sobre aspectos básicos referente a virtualização. Geralmente serão posts curtos, explicando o conceito de uma determinada tecnologia;









No artigo de hoje, vou esclarecer diferença entre: Thick Provision vs Thin Provision









![thin-vs-thick](/imagens/2016/04/thin-vs-thick.jpg)








<!-- more -->



Em resumo:







**Thick Provision Lazy Zeroed **– é um disco “thick” padrão, ou seja, _todo o espaço é alocado no momento da sua criação_. Neste formato de disco virtual, qualquer dado que exista no dispositivo físico é mantido no momento da criação, e só são “zerados” no momento em que a máquina virtual vai escrevendo seus dados.

**Thick Provision Eager Zeroed** – é um disco “thick” que possui suporte a alguns recursos de cluster, como FT. Também aloca todo o espaço necessário no momento da sua criação. A diferença para o formato “lazy” (ou flat) é que os dados existentes no dispositivo físico são todos zerados no momento da criação. O tempo de criação deste tipo de disco pode demorar mais que os demais.

**Thin Provision** – neste tipo de disco _apenas um espaço mínimo é utilizado no momento da sua criação_. A medida que mais espaço físico for sendo necessário, o disco “thin” vai aumentando o seu tamanho, podendo chegar até o tamanho alocado inicialmente.

Na imagem abaixo, podemos ver e entender com facilidade a diferença entre Thick Provisioning e Thin Provisioning

[caption id="attachment_1331" align="aligncenter" width="800"]![Diferenças entre tipos de disco em uma VM Thin vs Thick Provision](/imagens/2016/04/Diferenças-entre-tipos-de-disco-em-uma-VM-Thin-vs-Thick-Provision-e1461636326617.png)
**Diferença entre Thick Provisioning e Thin Provisioning**[/caption]

Portanto, se você tem pouco espaço em disco no seu lab, o caminho a seguir é sempre usar Thin Provision. Mas o esquema (mesmo em produção) é sempre ficar de olho na utilização e monitorar o crescimento de suas VMs.

No meu trabalho, todas as VMs que utilizamos, são criadas como Thin Provision e temos um monitoramento super bacana e em cima, para não termos surpresas.

Na minha opinião (totalmente pessoal), trabalhar com Thick Provision é a mesma coisa que trabalhar com storage no século passado. Você vai lá, compra discos projetando um crescimento de 3 anos e aloca disco para cada servidor. Mesmo se o servidor em questão não utilize aquele espaço provisionado, o disco já foi alocado, desperdiçando disco. Com o Thin Provision, você "tecnicamente economiza disco".

Outro ponto importante: PERFORMANCE. Eu li dezenas de artigos (vou deixar os links aqui no post) sobre isso e no final não consegui chegar a nenhuma conclusão. Uns dizem que disco Thin Provision é mais performático do que disco Thick, outros dizem o contrário. Aqui, o que vale é testar no seu ambiente para tomar a decisão.

É isso ai.. Vou deixar alguns links, onde vocês podem pesquisar mais informações (todos em Inglês).

Até a próxima pessoal!

Links:

[http://www.vmware.com/br/products/vsphere/features/storage-thin-provisioning](http://www.vmware.com/br/products/vsphere/features/storage-thin-provisioning)

[http://pubs.vmware.com/vsphere-60/topic/com.vmware.ICbase/PDF/vsphere-esxi-vcenter-server-60-storage-guide.pdf](http://pubs.vmware.com/vsphere-60/topic/com.vmware.ICbase/PDF/vsphere-esxi-vcenter-server-60-storage-guide.pdf)

[http://blogs.vmware.com/vsphere/2012/03/thin-provisioning-whats-the-scoop.html](http://blogs.vmware.com/vsphere/2012/03/thin-provisioning-whats-the-scoop.html)

[https://www.vmware.com/pdf/vsp_4_thinprov_perf.pdf](https://www.vmware.com/pdf/vsp_4_thinprov_perf.pdf)

[http://www.storagecraft.com/blog/virtualization-thin-provisioning-better/](http://www.storagecraft.com/blog/virtualization-thin-provisioning-better/)

[http://www.storagecraft.com/blog/top-3-limitations-thin-provisioning/](http://www.storagecraft.com/blog/top-3-limitations-thin-provisioning/)

[http://www.techrepublic.com/blog/the-enterprise-cloud/what-is-thin-provisioning/](http://www.techrepublic.com/blog/the-enterprise-cloud/what-is-thin-provisioning/)


