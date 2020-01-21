---
author: Valdecir Carvalho
date: 2016-10-18 10:08:43+00:00
draft: false
title: VMware vSphere 6.5 - Lançamento oficial
type: post
url: /vmware-vsphere-6-5-lancamento-oficial/
categories:
- VMworld 2016
tags:
- blog official vmworld 2016
- blog oficial vmworld 2016
- blog vmworld
- blog vmworld 2016
- blog vmworld 2016 em português
- brasileiro vmworld
- canal youtube vmworld
- homelab
- homelab vmware
- homelaber
- lançamento vmware vsphere 6.5
- nova versão vmware vsphere 6.5
- video
- vmware vsphere 6.5
- vmworld
- vmworld 2016
- vmworld brasil
- vmworld youtube
- vmworld youtube brasil
- vSphere
- youtube
---

Olá Homelabers!

_Update 1_ - O Pedro do blog Pedro Calixo fez um post bem bacana sobre o lançamento do vSphere 6.5. [Confira aqui](http://pedrocalixto.com/blog/2016/10/18/vsphere-6-5-e-anunciado-na-vmworld-barcelona/)

Update 2 - O Thiago do Blog VMware Brasil fez uma série super completa sobre o lançamento do vSphere 6.5. [Confira aqui](http://vmwarebrasil.blogspot.com.br/2016/10/o-que-ha-de-novo-no-vsphere-65-vcsa.html)

A nova versão do **VMware vSphere 6.5** foi oficialmente **anunciada** hoje na **VMworld de Barcelona**.

Vou destacar aqui algumas das novidades. Nos próximos dias pretendo fazer um review mais completo.

![introducing-vsphere-65](/imagens/2016/10/introducing-vSphere-65.png)


<!-- more -->



### Migration



![_vmware-vsphere-65-migration](/imagens/2016/10/vmware-vsphere-65-migration-300x171.png)
A migração para o vCSA (vCenter Server Appliance) ficou simples.

A ferramenta permite a migração de vCenter rodando em Windows para as versões 5.5 e 6.0



### VMware Update Manager (VUM)



Agora o VMware Update Manager (VUM) é parte do vCenter Server Appliance, isso significa que não é mais necessário uma VM rodando apenas para fazer os updates.



### Improved Appliance Management



![_vmware-vsphere-65-app-management](/imagens/2016/10/vmware-vsphere-65-app-management-300x144.png)


Melhorias na interface de gerenciamento - A nova interface mostra informações de rede, estatísticas do banco de dados, espaço em disco, saúde do ambiente, cpu, memória em uma interface única, facilitando a monitoração e as tarefas operacionais



### **Native High Availability**



![_vmware-vsphere-65-vcenterha](/imagens/2016/10/vmware-vsphere-65-vcenterHA-300x118.png)


vCenter Server High Availability
A versão 6.5 apresenta uma nova feature nativa de alta disponibilidade (exclusiva do vCSA).
Agora o vCenter deixa de ser um ponto único de falha e tem integrado HA (Ativo, Passivo e Witness)



### **Backup and Restore**



Nova funcionalidade interna de backup e restore para o vCSA.
Permite realizar backups e restore do vCenter Server Appliance (vCSA)



### **vSphere Web Client**



![_vmware-vsphere-65-web-client](/imagens/2016/10/vmware-vsphere-65-web-client-300x73.png)


Houveram melhorias na UI do vSphere Web Client, mas INFELIZMENTE continua baseada no Adobe Flex e Adobe Flash (Shame on you VMware).



### **vSphere Client**



![_vmware-vsphere-65-h5-client](/imagens/2016/10/vmware-vsphere-65-h5-client-300x235.png)


Foi totalmente redesenhado e é o que já vimos pelos Flings lançados anteriormente

É uma versão com HTML5 que vai rodar junto com o vSphere web client e essa versão está embutida no vCenter Server 6.5 Windows e vCSA

![_vmware-vsphere-65-vcsa-highlights](/imagens/2016/10/vmware-vsphere-65-VCSA-highlights-300x79.png)


Mais informações aqui nos blogs oficiais:

[http://blogs.vmware.com/vsphere/launch](http://blogs.vmware.com/vsphere/launch)

[http://blogs.vmware.com/vsphere/2016/10/introducing-vsphere-6-5.html](http://blogs.vmware.com/vsphere/2016/10/introducing-vsphere-6-5.html)

[http://blogs.vmware.com/vsphere/2016/10/whats-new-in-vsphere-6-5-vcenter-server.html](http://blogs.vmware.com/vsphere/2016/10/whats-new-in-vsphere-6-5-vcenter-server.html)

[http://www.vmware.com/company/news/releases/vmw-newsfeed.VMware-Advances-Cross-Cloud-Architecture-with-New-Releases-of-vSphere,-Virtual-SAN-and-vRealize-Solutions-to-Drive-IT-and-Developer-Productivity.2104600.html](http://www.vmware.com/company/news/releases/vmw-newsfeed.VMware-Advances-Cross-Cloud-Architecture-with-New-Releases-of-vSphere,-Virtual-SAN-and-vRealize-Solutions-to-Drive-IT-and-Developer-Productivity.2104600.html)




