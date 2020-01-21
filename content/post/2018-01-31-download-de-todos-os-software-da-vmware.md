---
author: Valdecir Carvalho
date: 2018-01-31 12:00:50+00:00
draft: false
title: Free Download de todos os software da VMware
type: post
url: /download-de-todos-os-software-da-vmware/
categories:
- Blog
- Free Stuff
- Homelab
- Tools
- Tutoriais
- vExpert
- VMware
tags:
- download softwares vmware
- download vmware
- download vmware free
- download vsphere
- GitHub
- linux
- my vmware
- vmware
- vmware software manager
- vsm
---

Olá Homelabers!

Você já precisou fazer o download de um software da VMware para o seu lab não tinha acesso ao software em questão?

Acredito que muitos de nós já passamos por essa situação, seja porque o seu trial já expirou ou porque você saiu da empresa e o seu perfil no my.vmware.com não tem acesso a mais nada.

Há muito tempo atrás, fiz um post sobre o **[VMware Software Manager](http://homelaber.com.br/vmware-software-manager/)**, que é um software disponibilizado pela VMware onde você pode navegar e baixar praticamente toda a biblioteca de softwares de uma maneira bem fácil. Mas o VSM tem alguns problemas:




      * Somente roda em ambiente Windows
      * Nem sempre (ou quase nunca) funciona
      * Foi descontinuado pela VMware




## A resposta da comunidade: LinuxVSM



O [Edward Haletky](https://www.astroarch.com/blog/) aka @Texiwill criou um port do VSM para Linux que funciona perfeitamente bem e é super fácil de usar. Estou rodando o LinuxVSM há mais ou menos 2 semanas e estou muito feliz com o resultado.

Com o LinuxVSM você terá um **repositório de softwares VMware sempre atualizado**, dentro de sua empresa ou no seu lab, com a vantagem de não precisar de esperar horas para baixar aquela nova versão.

O port pode ser encontrado no Github do Texiwill ([link](http://bit.ly/2GyLp94)) e a sua instalação é bem fácil.



## Instalação



Para rodar o LinuxVSM você vai precisar de uma VM com Linux RedHat (RHEL) ou CentOS - não funciona no Ubuntu - e configurações mínimas. A minha VM tem 1vCPU e 2GB RAM e está rodando lisa. Você também vai precisar de uma conta no [my.vmware.com](https://my.vmware.com)

![](/imagens/2018/01/linuxvsm-1-644x366.jpg)





      * Crie um diretório chamado vsmlinux (ou qualquer outro nome de sua preferência)



    
    mkdir vsmlinux






      * Acesse o diretório e execute o comando abaixo para baixar o instalador



    
    cd vsmlinux/
    
    wget https://raw.githubusercontent.com/Texiwill/aac-lib/master/vsm/install.sh






      * Conceda as permissões para executar o arquivo e execute o instalador:



    
    chmod a+x install.sh && ./install.sh



Ao final do processo o executável do LinuxVSM está localizado na pasta **/usr/local/bin/vsm.sh**



## Executando o LinuxVSM





#### Mostrar o help




    
    /usr/local/bin/vsm.sh --help





#### Executar sem nenhum parâmetro mostra as opções de download




    
    /usr/local/bin/vsm.sh





#### Informar o usuário, password do[ my.vmware.com](https://my.vmware.com/) e local para salvar os downloads




    
    /usr/local/bin/vsm.sh -m -u <usuário_my_vmware> -p <password> --repo <diretorio_para_download>



Use esse comando para executar regularmente o download, buscando sempre as últimas atualizações.


    
    /usr/local/bin/vsm.sh -m -mr -y



Toda a navegação é feita via menu, como mostrado na imagem abaixo

![](/imagens/2018/01/linuxvsm-2-644x448.jpg)


Outros comandos úteis:

Para atualizar o sistema automaticamente e diretamente do repositório Github


    
    ./aac-base.install -u



Então é isso pessoal, por hoje ficamos por aqui. Deixe ai nos comentários se você já usava o VMware Software Manager antes e se pretende utilizar o LinuxVSM. Peço também que deixe um alô para o Edward no twitter ([@Texiwill](https://twitter.com/texiwill)) agradecendo por disponibilizar seu magnífico trabalho - de graça - para a comunidade.

Se você for um VMware vExpert, existe uma "chave secreta" que libera mais alguns downloads. Entre em contato comigo ou com o @Texiwill para descobrir o easter egg :)

Conheça o site do Edware visitando o link [https://www.astroarch.com/2018/01/vsphere-upgrade-saga-linux-vmware-software-manager-vsm/](https://www.astroarch.com/2018/01/vsphere-upgrade-saga-linux-vmware-software-manager-vsm/)

Até a próxima!

VC
