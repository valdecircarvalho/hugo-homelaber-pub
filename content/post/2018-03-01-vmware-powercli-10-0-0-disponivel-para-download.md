---
author: Valdecir Carvalho
date: 2018-03-01 12:00:02+00:00
draft: false
title: VMware PowerCLI 10.0.0 disponível para download
type: post
url: /vmware-powercli-10-0-0-disponivel-para-download/
categories:
- Blog
- Free Stuff
- VMware
tags:
- blog
- download
- download PowerCLI
- download vmware
- PowerCli
- powercli 10
- powershell
- vmware
- vmware powercli
- vSphere
---

Olá Homelabers!

Você já usa PowerCLI no seu ambiente de lab ou de produção?



## O que é o VMware PowerCLI?





<blockquote>O VMware PowerCLI é uma ferramenta de script e linha de comando criada em cima do Windows PowerShell e fornece mais de 600 cmdlets para gerenciar e automatizar praticamente todos os produtos da VMware como vSphere, vCloud, vRealize Operations Manager, vSAN, NSX-T, VMware Cloud em AWS e ambientes VMware Horizon.</blockquote>



O **PowerCLI** é uma tremenda ferramenta para **automatizar ações de produtos VMware**. Você pode fazer praticamente tudo com ele, utilizando scripts e a linguagem PowerShell. É uma mão na roda e vale muito a pena conhecer, se você ainda não o utiliza no seu dia a dia. E se você já usa, atualize agora para a nova versão.

Mas vamos ao tema do post do hoje, ontem a VMware liberou para GA - General Availability - a versão 10.0.0 do VMware PowerCLI, que completa 10 anos de existência.



## Novidades:





#### Suporte multi-plataforma



O PowerCLI 10.0.0 adiciona suporte para Mac OS e Linux! O único pré-requisito é ter o [PowerShell Core 6.0 instalado](https://github.com/PowerShell/PowerShell).

Para **instalar o PowerCLI** 10.0 basta executar o comando:


    
    Install-Module -Name VMware.PowerCLI -Scope CurrentUser



Para **atualizar o PowerCLI** para a versão atual, execute o comando:


    
    Update-Module VMware.PowerCLI



![](/imagens/2018/03/powercli-v10-1-644x357.jpg)




#### Manipulação de certificados padrão



Esta versão altera a forma como os certificados são tratados quando se conecta a um servidor vCenter ou host ESXi com o cmdlet Connect-VIServer. Se o servidor estiver usando um certificado inválido (auto-assinado ou não), o PowerCLI retornaria um aviso. O PowerCLI foi atualizado para ser mais seguro.

Se você estiver usando um certificado inválido, você pode evitar o erro com o cmdlet '**Set-PowerCLIConfiguration**'. Basta executar o comando:


    
    Set-PowerCLIConfiguration -InvalidCertificateAction Ignore





#### Comandos e Propriedades Descontinuados



Nessa versão cinco cmdlets que se tornaram obsoletos e foram substituidos pelo cmdlet I**nvoke-VMScript.**

Get-VMGuestNetworkInterface
Set-VMGuestNetworkInterface
Get-VMGuestRoute
New-VMGuestRoute
Remove-VMGuestRoute



#### Mais informações e documentação oficial:



Para obter mais informações sobre as alterações feitas no VMware PowerCLI 10.0.0, incluindo melhorias, aprimoramentos de segurança e recursos obsoletos, consulte o [Change Log](https://www.vmware.com/support/developer/PowerCLI/changelog.html). Para obter mais informações sobre recursos específicos do produto, consulte o [VMware PowerCLI 10.0.0 User’s Guide](https://code.vmware.com/doc/preview?id=6332). Para obter mais informações sobre cmdlets específicos, consulte o [VMware PowerCLI 10.0.0 Cmdlet Reference](https://code.vmware.com/doc/preview?id=6330).

Deixe nos comentários sua experiência com PowerCLI e se você já atualizou para a nova versão.

https://twitter.com/PowerCLI/status/969009388378836993

https://twitter.com/PowerCLI/status/968966775814619136
