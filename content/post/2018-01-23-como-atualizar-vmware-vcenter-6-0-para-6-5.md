---
author: Valdecir Carvalho
date: 2018-01-23 12:00:24+00:00
draft: false
title: Como atualizar VMware vCenter 6.0 para 6.5
type: post
url: /como-atualizar-vmware-vcenter-6-0-para-6-5/
categories:
- Blog
- Homelab
- Tutoriais
- VMware
tags:
- atualização vmware
- atualizar vcenter 6 para 6.5
- blog
- como atualizar vmware
- tutorial atualização vmware
- tutorial vmware
- update vmware
- upgrade
- upgrade vcenter
- upgrade vcenter 6 para 6.5
- upgrade vmware
- vCenter Server
- vmware
- vmware vsphere
- vmware vsphere 6.5
- vSphere
---

Olá Homelabers!

Qual **versão do VMware vSphere** vocês estão rodando em seus labs ou ambientes produtivos?

No meu lab, por diversos motivos, eu estou rodando o vSphere versão 6.0 e nessa série de posts, vou mostrar **como fazer o upgrade para o vSphere versão 6.5**, começando pelo **VMware vCenter Server 6.5**

![](/imagens/2018/01/migrate2vcsa-300x269-300x269.jpg)




## Recomendações iniciais:



Se você for planejar um upgrade, seja em produção ou em seu lab, é muito importante que você [**leia a documentação disponível**](https://docs.vmware.com/en/VMware-vSphere/6.5/vsphere-esxi-vcenter-server-65-upgrade-guide.pdf) e o **[Release Notes](https://docs.vmware.com/en/VMware-vSphere/6.5/rn/vsphere-esxi-vcenter-server-65-release-notes.html)** da versão, **planeje bem a mudança**, **valide se o seu hardware é suportado** - [consulte a HCL](https://www.vmware.com/resources/compatibility/) - e se possível **não faça a mudança direto em produção**. Se você não tiver um ambiente de homologação, ao menos **faça testes** com um ambiente nested para você se **acostumar com a migração e evitar surpresas**.

E o **primeiro componente** que você deve **atualizar é o vCenter Server**.



## Preparativos:



![](/imagens/2018/01/vSphere-6.5-Documents-644x191.png)





      * Baixe o ISO **antes da janela de manutenção**, pode parecer obvio mas...
      * **Desligue o DRS** antes a atualização.
      * O processo envolve um I**P temporário** para a nova VM do VCSA, de modo que o antigo e o novo IP vão estar online simultaneamente para transferir dados. **Providencie o IP antecipadamente**.
      * Adicione o **IP temporário a quaisquer regras de firewall** envolvendo o VCSA existente.
      * Verifique se você tem **algum plugin** (Anti-Vírus, Backup, vRA, etc) e certifique-se da **compatibilidade com a nova versão**. [Product Interoperability Matrix](https://www.vmware.com/resources/compatibility/sim/interop_matrix.php)
      * **Valide** as suas entradas no **DNS**! Aliás, **a culpa é sempre do DNS**.
      * **Faça um backup e/ou snapshot** do seu vCenter antes de iniciar o processo.
      * Renomeie o seu vCenter, pois durante o processo de upgrade e criação da nova VM, o instalador irá solicitar um nome para a VM.
      * **Valide se você tem espaço suficiente no datastore**. O vCenter 6.5 **consome mais CPU, disco e memória** do que o 6.0 ([Hardware Requirements](https://docs.vmware.com/en/VMware-vSphere/6.5/com.vmware.vsphere.upgrade.doc/GUID-88571D8A-46E1-464D-A349-4DC43DCAF320.html) | [Software Requirements](https://docs.vmware.com/en/VMware-vSphere/6.5/com.vmware.vsphere.upgrade.doc/GUID-FB268055-5D36-4624-A64C-9800D3FCB689.html))
      * Tenha em mãos o **usuário e senha (root) do ESXi** onde está o seu vCenter atual.
      * Tenha em mãos o **usuário e senha do vCenter atual**. Se a senha estiver expirada, a instalação vai parar.
      * Certifique-se de que o host ao qual você fará o deploy da nova versão não está em **Lockdown** ou **Maintenance** **Mode**
      * Você pode utilizar o software de update no **Windows**, **Linux** ou **MacOS** e o arquivo de instalação está no diretório **\vcsa-ui-installer\<so>\installer**
      * Certifique-se de ter **lido esse KB** (2147548) [**Important information before upgrading to vSphere 6.5**](https://kb.vmware.com/s/article/2147548)




<blockquote>

> 
> **E lembre-se, o vSphere Client (Fat Client) não é mais suportado nesta versão. Então, é bom você se acostumar com o Web Client e o HTML5 Client**
> 
> 
</blockquote>





## Como atualizar VMware vCenter 6.0 para 6.5



A atualização do VCSA (**V**Mware v**C**enter **S**erver **A**ppliance) 6.5 é dividida em **duas etapas**.

A **primeira etapa** é a implantação de um novo vCenter Server Appliance e a **segunda etapa** é copia dados do vCenter 6.0 para o VCSA 6.5.

Interessante notar, que não é um upgrade de fato, pois uma nova VM é criada e os dados do vCenter atual são copiados para o novo e a VM antiga fica desligada, podendo ser apagada do ambiente após a validação da mudança.



## Passo-a-Passo:



Fazer o download da última versão do VMware vCenter Server (versão [6.5.0U1](https://my.vmware.com/web/vmware/details?productId=614&downloadGroup=VC65U1E)e na data de publicação desse post)




      * Montar o ISO no seu computador
      * Executar o instalador localizado na pasta  \vcsa-ui-installer\<so>\installer
      * Selecionar a opção **Upgrade** - Para atualizar um vCenter Server Appliance existente.


![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_18-14-00-644x483.jpg)





      * Clicar em Next para iniciar o primeiro estágio do Upgrade


![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_18-14-21-644x483.jpg)





      * Aceitar a EULA e clicar em Next


![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_18-14-30-644x483.jpg)





      * Informar o endereço (FQDN) do servidor vCenter atual
      * Clicar em Connect to Source
      * Clicar em Next


Aqui se o instalador não conseguir encontrar o seu vCenter Server, pare a instalação e verifique o DNS, IP, conectividade, etc.

![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_18-14-47-644x483.jpg)





      * Informe os dados de SSO - login de seu vCenter Server
      * Informe os dados do Host ESXi de seu vCenter atual
      * Clique em Next


![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_18-16-39-644x483.jpg)





      * Se você informou os dados corretos, aqui pode aparecer uma tela de Certificate Warning, clique em YES e continue.
      * Informe os dados do Host ESXi onde o novo vCenter será instalado
      * Clique em Next


![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_18-17-43-644x483.jpg)





      * Se você informou os dados corretos, aqui pode aparecer uma tela de Certificate Warning, clique em YES e continue.
      * Informe o nome da nova VM do vCenter - Se você renomeou a VM antiga, utilize o mesmo nome. No meu caso, eu dei um nome diferente.
      * Informe também a senha de root do vCenter. Anote essa senha!


![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_18-18-46-644x483.jpg)





      * Escolha o tamanho da sua instalação de acordo com o seu ambiente


![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_18-19-26-644x483.jpg)





      * Escolha o Datastore


![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_18-19-41-644x483.jpg)





      * Informe rede ao qual o novo servidor vCenter irá se conectar
      * Informe o IP Temporário, Default Gateway e Servidor DNS


![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_18-20-27-644x483.jpg)





      * Valide as informações e clique em Finish


![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_18-20-35-644x483.jpg)





      * O processo de instalação do estágio 1 irá iniciar. O processo pode demorar em torno de 20-30 minutos.


![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_18-20-42-644x483.jpg)





      * Ao finalizar, clique em Continue


![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_19-10-56-644x483.jpg)


Até agora, o processo de upgrade criou uma nova VM com o VCSA no IP temporário. O próximo estágio será a cópia dos dados da VM antiga para a nova.




      * Clique em Next para iniciar o segundo estágio do processo


![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_19-11-36-644x483.jpg)





      * Aguarde a validação


![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_19-11-56-644x483.jpg)





      * Se você não desligou o DRS antes de começar o procedimento, deve fazer agora.


![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_19-13-11-644x483.jpg)





      * Escolha quais dados serão migrados. No meu caso, eu escolhi migrar todos os dados.
      * Clique em Next


![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_19-13-22-644x483.jpg)





      * Escolha se você quer participar do [Customer Experience Improvement Program](https://www.vmware.com/solutions/trustvmware/ceip.html)
      * Clique em Next


![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_19-13-29-644x483.jpg)





      * Confira as informações
      * Selecione a caixa dizendo que você fez o backup de todas as configurações do vCenter atual - certifique-se de ter feito mesmo.
      * Clique em Next.


![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_19-13-39-644x483.jpg)





      * Confirme mais uma vez. Nesse ponto, o upgrade de fato irá começar. O vCenter atual será desligado.
      * Clique em Finish para iniciar o upgrade


![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_19-14-12-644x483.jpg)





      * Aguarde a cópia dos dados do vCenter antigo para o novo


![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_19-14-26-644x483.jpg)


Eu deixei um ping para o IP do vCenter antigo, durante a troca dos appliances, pedi apenas 9 pacotes.

![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_19-29-06-644x483.jpg)





      * Ao final do processo, clique em Close
      * Acesse vCenter https://:443


![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_19-35-56-644x483.jpg)
vCenter atualizado

![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_19-40-09-644x340.jpg)


Para acessar o HTML5 Client, utilize a URL **https://<ip-do-vcenter>/ui**

![](/imagens/2018/01/Como-atualizar-VMware-vCenter-6.0-para-6.5_2018-01-22_19-38-59-644x340.jpg)




## Próximos passos:



Se você tiver algum plugin (Backup, AV, vRA, vROps, etc) , esse será o momento de fazer a atualização, portanto, não apague o seu backup ou a VM antiga até se certificar de que tudo está funcionando.

Cheque as configurações de login, AD, etc. Se for necessário fazer qualquer ajuste, você pode acessar o **vSphere Appliance Manager** na URL https://:**5480** com o usuário **root**



_Não se esqueça, você **não conseguirá** mais **acessar a console do vCenter utilizando o vSphere Client**. Certifique-se de que todas as pessoas que precisam acessar o vCenter saibam disso._





## Considerações finais:



Eu achei o processo para fazer o upgrade do vCenter Server 6.0 para o 6.5 muito tranquilo, pelo menos no meu ambiente - LAB - não encontrei nenhum problema.

Gastei algumas horas **lendo a documentação**, **fazendo pesquisas** e **planejando o upgrade**, da mesma forma que faria se o upgrade fosse realizado em um ambiente produtivo - só não precisei abrir uma change :) -  e **recomendo que você faça o mesmo** para evitar surpresas.

Vou deixar aqui mais alguns KBs e links importantes que recomendo a leitura.

[Best practices for upgrading to vCenter Server 6.5 (2147686)](https://kb.vmware.com/s/article/2147686)

[Update sequence for vSphere 6.5 and its compatible VMware products (2147289)](https://kb.vmware.com/s/article/2147289)

[Tips for upgrading to vSphere 6.5 in a Large-Scale Environment](https://blogs.vmware.com/vov/2018/01/22/tips-upgrading-vsphere-6-5-large-scale-environment/)

[Lista de funcionalidades suportadas e não suportadas](https://docs.vmware.com/en/VMware-vSphere/6.5/rn/vsphere-client-65-html5-functionality-support.html) do Client HTML5 e WebClient

vSphere 6.5 Upgrade Considerations - [Parte 1](https://blogs.vmware.com/vsphere/2017/05/vsphere-6-5-upgrade-considerations-part-1.html), [Parte 2](https://blogs.vmware.com/vsphere/2017/07/vsphere-6-5-upgrade-considerations-part-2.html) e [Parte 3](https://blogs.vmware.com/vsphere/2017/08/vsphere-6-5-upgrade-considerations-part-3.html) (Série de posts escritos pelo Emad Younis (@emad_younis)

[Maiores razões para fazer o upgrade para o vSphere 6.5](https://www.vmware.com/content/dam/digitalmarketing/vmware/en/pdf/products/vsphere/vmware-vsphere-top-reasons-to-upgrade-infographic.pdf)

E para finalizar, um episódio do [podcast Community Roundtable](http://www.talkshoe.com/talkshoe/web/talkCast.jsp?masterId=19367) sobre porque você deve fazer o upgrade para o @VMwarevSphere 6.5

https://twitter.com/VMware/status/955563823926251520

É isso pessoal! Deixe nos comentários **se você já fez, está pensando ou não vai fazer o upgrade para o vSphere 6.5 e porque!**

Nos próximos posts, vou mostrar como fazer o upgrade dos hosts ESXi.

Até a próxima!

--VC
