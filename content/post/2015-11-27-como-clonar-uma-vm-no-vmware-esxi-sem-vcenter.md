---
author: Valdecir Carvalho
date: 2015-11-27 00:00:00+00:00
draft: false
title: Como clonar uma VM no VMware ESXi sem vCenter
type: post
url: /como-clonar-uma-vm-no-vmware-esxi-sem-vcenter/
categories:
- Blog
tags:
- '#vDM30in30'
- clonar vm
- clone
- clone vm sem vcenter
- como clonar
- homelab
- homelab vmware
- how-to
- laboratório vmware
- vcenter
- vmkfstools
- vmware
---

Olá Homelabers! Nesse post rapidinho vou mostrar como clonar uma VM no VMware ESXi sem vCenter.

Essa dica é util e ajuda bastante se você tiver um host ESXi sem vCenter (a versão free) e precisa clonar uma vm como por exemplo um template Linux que você montou. Na verdade, o que faremos é uma "cópia" do disco da VM e criaremos uma nova VM apontando para esse disco.

Com isso, todo o trabalho da instalação do SO será poupado.

Vamos lá?

![dolly_2019167c](/imagens/2015/11/dolly_2019167c.jpg)
<!-- more -->

O primeiro passo é logar no ESXi via SSH, mas para isso, você precisa habilitar o acesso SSH ao host.

Aba "Configuration" --> Menu "Security Profile" --> Services Properties...

![clonar-vm-sem-vcenter-003](/imagens/2015/11/clonar-vm-sem-vcenter-003.png)


![clonar-vm-sem-vcenter-001](/imagens/2015/11/clonar-vm-sem-vcenter-001.png)


![clonar-vm-sem-vcenter-002](/imagens/2015/11/clonar-vm-sem-vcenter-002.png)


Após isso devemos encontrar o diretório onde a VM original se encontra.

O diretório padrão onde o as vms ficam armazenadas é /vmfs/volumes///, navegue entre os diretórios com o comando CD

![clonar-vm-sem-vcenter-008](/imagens/2015/11/clonar-vm-sem-vcenter-008.png)


Agora vamos criar um diretório para a nova vm:

mkdir <novavm>

O comando para copiar a vm é o [vmkfstools](https://pubs.vmware.com/vsphere-55/index.jsp?topic=%2Fcom.vmware.vsphere.storage.doc%2FGUID-A5D85C33-A510-4A3E-8FC7-93E6BA0A048F.html)


    
    vmkfstools -d thin -i /vmfs/volumes/54023ae9-989b9114-f653-001b21267170/linux-ubuntu-template/linux-ubuntu-template.vmdk /vmfs/volumes/56512cb8-3b202810-c2c8-001b21267170/syslog-ng/syslog-ng.vmdk



![clonar-vm-sem-vcenter-007](/imagens/2015/11/clonar-vm-sem-vcenter-007.png)


![clonar-vm-sem-vcenter-006](/imagens/2015/11/clonar-vm-sem-vcenter-006.png)


Assim que a cópia for finalizada, você pode fechar o ssh e voltar para o vSphere Client para criar uma nova VM.

Os passos são os mesmos o que muda é na hora de criar o disco, você vai escolher o disco clonado.

![clonar-vm-sem-vcenter-005](/imagens/2015/11/clonar-vm-sem-vcenter-005.png)


![clonar-vm-sem-vcenter-004](/imagens/2015/11/clonar-vm-sem-vcenter-004.png)


Dependendo do SO que você clonou, será necessário fazer algumas configurações - no caso do Windows rodar o Sysprep e no Linux mudar o hostname, ip, etc.

É isso pessoal! Espero que essa dica seja útil e qualquer dúvida é só deixar um recado aqui nos comentários do post.

![Designed by Joel Jordan for GlockStore](/imagens/2015/11/gloc-like-e1448594746803.jpg)

