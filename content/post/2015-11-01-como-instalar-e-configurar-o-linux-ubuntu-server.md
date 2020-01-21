---
author: Valdecir Carvalho
date: 2015-11-01 13:00:39+00:00
draft: false
title: Como instalar e configurar o Linux Ubuntu Server
type: post
url: /como-instalar-e-configurar-o-linux-ubuntu-server/
categories:
- Blog
tags:
- como-instalar
- homelab
- homelab vmware
- how-to
- instalação
- laboratório vmware
- linux
- linux ubuntu
- servidor
- ubuntu
- ubuntu server
- virtual machine
- vmware
---

Olá Homelabers!

Neste post vou mostrar como criar e instalar uma VM com o Ubuntu Server. Será uma instalação básica que será a base para várias outras instalações. Aliás eu já deveria ter feito esse post há bastante tempo.

Em um primeiro momento, para quem nunca instalou um servidor Linux, pode parecer coisa de outro mundo, mas o processo de instalação é bastante fácil e rápido.

![logo-ubuntu_su-black_orange-hex](/imagens/2015/11/logo-ubuntu_su-black_orange-hex.png)


Vamos lá?

<!-- more -->

Antes de mais nada, esse post pode parecer a primeira vista bastante longo, mas ele está "recheado" de telinhas com _todos_ os passos para a instalação do Linux Ubuntu Server, tentei ser o mais didático e detalhista possível.

A primeira coisa a se fazer é baixar a ISO do Ubuntu server no site[ http://www.ubuntu.com/download/server](http://www.ubuntu.com/download/server). O ISO tem pouco menos de 600MB.

[![homelaber-instalacao-ubuntu-server-homelab-000](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-000.png)
](http://www.ubuntu.com/download/server)

O próximo passo é logar no vSphere e criar uma nova VM

![homelaber-instalacao-ubuntu-server-homelab-001](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-001.png)


Antes de criar a VM, vamos fazer o upload do arquivo ISO do Ubuntu.

Selecione o seu datastore, clique com o botão direito e selecione "Browse Datastore..."

![homelaber-instalacao-ubuntu-server-homelab-079](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-079.png)


Para manter tudo organizado, eu costumo criar uma pasta chamada "ISO" e nela guardar todos os ISOs que irei usar. Fica ao eu critério.

Clique no icone com uma setinha verde para cima, depois "Upload File..."

![homelaber-instalacao-ubuntu-server-homelab-082](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-082.png)


Selecione o arquivo .ISO do ubuntu server que acabamos de fazer o download e clique em "Open".

![homelaber-instalacao-ubuntu-server-homelab-081](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-081.png)


Aguarde o upload do arquivo para prosseguir com a instalação.



![homelaber-instalacao-ubuntu-server-homelab-080](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-080.png)


Pronto, agora que temos o arquivo ISO já armazenado em nosso datastore, chegou a hora de criar uma nova VM.

Selecione File --> New --> Virtual Machine... ou Ctrl+N se você for um viciado em teclas de atalho como eu :)

![homelaber-instalacao-ubuntu-server-homelab-002](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-002.png)


Selecione "Custom"

![homelaber-instalacao-ubuntu-server-homelab-003](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-003.png)


De um nome para a sua VM. Eu usei "ubuntuserver"

![homelaber-instalacao-ubuntu-server-homelab-004](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-004.png)


Escolha o Datastore

![homelaber-instalacao-ubuntu-server-homelab-005](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-005.png)


Selecione a versão da maquina virtual

![homelaber-instalacao-ubuntu-server-homelab-006](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-006.png)


Selecione o sistema operacional, em nosso caso, Ubuntu Linux 64 bits

![homelaber-instalacao-ubuntu-server-homelab-007](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-007.png)


Para essa VM iremos utilizar 1vCPU e 1 Core. Essas configurações poderão ser alteradas posteriormente. Caso você esteja criando uma VM para alguma finalidade específica, mude as configurações aqui.

![homelaber-instalacao-ubuntu-server-homelab-008](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-008.png)


O mesmo vale para a quantidade de memória da VM. Caso você esteja criando uma VM para alguma finalidade específica, mude as configurações aqui.

![homelaber-instalacao-ubuntu-server-homelab-009](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-009.png)


Selecione a interface de rede.

![homelaber-instalacao-ubuntu-server-homelab-010](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-010.png)


Selecione a controladora SCSI. Deixe a opção default (LSI Logic Parallel). Mais informações [aqui](https://blogs.vmware.com/vsphere/2014/02/vscsi-controller-choose-performance.html)

![homelaber-instalacao-ubuntu-server-homelab-011](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-011.png)


Selecione "Create a new virtual disk" para criar um novo disco (HD).

![homelaber-instalacao-ubuntu-server-homelab-012](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-012.png)


Defina do tamanho e o tipo. Nesse caso, defini um disco pequeno de 20 GB que é mais do que suficiente para a instalação do Ubuntu.

Outra escolha importante é o tipo de provisionamento de disco. Aqui vale um parenteses com a explicação de cada tipo de disco.

![homelaber-instalacao-ubuntu-server-homelab-013](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-013.png)


[su_box title="Diferenças entre tipos de disco em uma VM"]

** Thick Provision Lazy Zeroed ** – é um disco “thick” padrão, ou seja, _todo o espaço é alocado no momento da sua criação_. Neste formato de disco virtual, qualquer dado que exista no dispositivo físico é mantido no momento da criação, e só são “zerados” no momento em que a máquina virtual vai escrevendo seus dados.

**Thick Provision Eager Zeroed** – é um disco “thick” que possui suporte a alguns recursos de cluster, como FT. Também aloca todo o espaço necessário no momento da sua criação. A diferença para o formato “lazy” (ou flat) é que os dados existentes no dispositivo físico são todos zerados no momento da criação. O tempo de criação deste tipo de disco pode demorar mais que os demais.

**Thin Provision** – neste tipo de disco _apenas um espaço mínimo é utilizado no momento da sua criação_. A medida que mais espaço físico for sendo necessário, o disco “thin” vai aumentando o seu tamanho, podendo chegar até o tamanho alocado inicialmente.

fonte: [http://vmwarebrasil.blogspot.com.br/2013/04/qual-diferenca-entre-discos-thick-thin.html](http://vmwarebrasil.blogspot.com.br/2013/04/qual-diferenca-entre-discos-thick-thin.html)
[/su_box]

![homelaber-instalacao-ubuntu-server-homelab-014](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-014.png)


Selecione a opção "Edit the virtual machine..." e clique em Continue para iniciar o processo de criação da VM.

![homelaber-instalacao-ubuntu-server-homelab-015](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-015.png)


Remova o "New Floppy" selecionando a opção e clicando no botão "Remove". Não precisamos de um drive de disket em nossa VM certo?

![homelaber-instalacao-ubuntu-server-homelab-016](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-016.png)


Selecione New CD/DVD e marque a opção "Connect at power on" e em seguida selecione "Datastore ISO file" e clique em Browse e selecione o aquivo ISO que você baixou do site e subiu para o datastore.

![homelaber-instalacao-ubuntu-server-homelab-017](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-017.png)


Clique na aba "Options", selecione "Memory/CPU Hotplug e marque as opções destacadas na figura abaixo.

![homelaber-instalacao-ubuntu-server-homelab-018](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-018.png)


Clique em Finish e acompanhe a criação de nossa VM.
![homelaber-instalacao-ubuntu-server-homelab-019](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-019.png)
![homelaber-instalacao-ubuntu-server-homelab-020](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-020.png)




Abra a console da VM e clique em Power On para "ligar a maquina" e iniciar o boot.![homelaber-instalacao-ubuntu-server-homelab-021](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-021.png)


Aqui começa de fato a instalação do sistema operacional. Selecione a lingua. Eu prefiro sempre instalar e utilizar o SO (seja ele qual for) em Inglês - mas isso é coisa de velho.

![homelaber-instalacao-ubuntu-server-homelab-022](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-022.png)


Selecione "Install Ubuntu Server" e clique ENTER.

![homelaber-instalacao-ubuntu-server-homelab-023](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-023.png)


Selecione a lingua do SO e clique Enter

![homelaber-instalacao-ubuntu-server-homelab-024](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-024.png)


Selecione a sua localização e tecle Enter.
![homelaber-instalacao-ubuntu-server-homelab-025](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-025.png)


Selecione o layout do seu teclado. Aqui você pode escolher a opção default, pois na próxima tela o sistema irá fazer a identificação automática.

![homelaber-instalacao-ubuntu-server-homelab-026](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-026.png)


Selecione YES e clique enter.

![homelaber-instalacao-ubuntu-server-homelab-027](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-027.png)


Digite as teclas informadas para que o sistema identifique o layout do seu teclado.
![homelaber-instalacao-ubuntu-server-homelab-028](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-028.png)


![homelaber-instalacao-ubuntu-server-homelab-029](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-029.png)


Selecione "Continue" e aperte ENTER.

![homelaber-instalacao-ubuntu-server-homelab-030](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-030.png)


A instalação de fato irá iniciar... seja paciente :)

![homelaber-instalacao-ubuntu-server-homelab-031](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-031.png)


Chegou a hora de configurar a rede. Digite o hostname desejado. Esse será o nome da sua maquina.

![homelaber-instalacao-ubuntu-server-homelab-032](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-032.png)


Digite no nome do administrador do sistema. Pode ser qualquer nome. Eu costumo usar um padrão "administrator" - original não? :)

![homelaber-instalacao-ubuntu-server-homelab-033](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-033.png)


Digite o nome do usuário. Aqui vai uma vez a critividade impera e uso "administrator".

![homelaber-instalacao-ubuntu-server-homelab-034](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-034.png)


Chegou a hora de escolher a senha do usuário administrador. Escolha uma senha que você irá se lembrar ou anote. Depois para recuperar da um trabalho enorme.

![homelaber-instalacao-ubuntu-server-homelab-035](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-035.png)


Repita a senha do administrador.

![homelaber-instalacao-ubuntu-server-homelab-036](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-036.png)


Nessa tela é feita a pergunta se você quer encriptar o diretório home. Eu sempre respondo "Não".

![homelaber-instalacao-ubuntu-server-homelab-037](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-037.png)


Aguarde a instalação...

![homelaber-instalacao-ubuntu-server-homelab-038](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-038.png)


Selecione a sua localização para ajustes do relógio.

![homelaber-instalacao-ubuntu-server-homelab-039](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-039.png)


Essa é a hora de escolher o tipo de partição do disco. Escolha a opção selecionada na figura abaixo.

![homelaber-instalacao-ubuntu-server-homelab-040](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-040.png)




![homelaber-instalacao-ubuntu-server-homelab-041](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-041.png)


Selecione YES e clique ENTER para prosseguir.

![homelaber-instalacao-ubuntu-server-homelab-042](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-042.png)


Selecione "Continue" e tecle ENTER.

![homelaber-instalacao-ubuntu-server-homelab-044](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-044.png)


Selecione YES para escrever as alterações no disco e continuar com a instalação.

![homelaber-instalacao-ubuntu-server-homelab-045](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-045.png)


Aguarde o particionamento dos discos...

![homelaber-instalacao-ubuntu-server-homelab-046](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-046.png)


E agora mais uma vez... a instalação dos arquivos!

![homelaber-instalacao-ubuntu-server-homelab-047](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-047.png)


Se você utilizar um servidor Proxy para saída de internet (provavelmente não), coloque as informações aqui. Caso contrário, deixe em branco, selecione "Continue" e aperte ENTER.

![homelaber-instalacao-ubuntu-server-homelab-048](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-048.png)


Mais um pouquinho....

![homelaber-instalacao-ubuntu-server-homelab-049](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-049.png)


Nessa tela, selecione "No automatic updates" Dessa forma o servidor não irá fazer updates de software automaticamente, o que pode ser um problema caso você vá rodar uma versão especifica de um sistema. O melhor é atualizar manualmente.

![homelaber-instalacao-ubuntu-server-homelab-050](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-050.png)


Nessa tela, você tem a opção de selecionar quais softwares ou sistemas deseja instalar. Marque apenas a opção "OpenSSH Server". Dessa forma você poderá acessar o sistema remotamente via [Putty](http://www.putty.org/) e posteriormente instalar o software que desejar.

![homelaber-instalacao-ubuntu-server-homelab-051](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-051.png)


Aguarde a instalação dos pacotes...

![homelaber-instalacao-ubuntu-server-homelab-052](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-052.png)


Na próxima tela, selecione YES e tecle ENTER. Você irá instalar o GRUB, o sistema de boot do Linux.

![homelaber-instalacao-ubuntu-server-homelab-053](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-053.png)


Pronto! A instalação terminou. Selecione "Continue" e clique enter. A VM irá reiniciar e o seu servidor Linux Ubuntu estará instalado.
![homelaber-instalacao-ubuntu-server-homelab-055](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-055.png)


Esse é o prompt inicial do Linux. Entre com o seu login e senha (o qual você definiu durante a instalação - eu falei para guardar!).

![homelaber-instalacao-ubuntu-server-homelab-056](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-056.png)


Ai está! Você acabou de criar e instalar uma VM com o sistema operacional Linux Ubuntu Server. A partir de agora, você poderá instalar outros softwares como um webserver, um proxy (veja como no post) e muito mais.

![homelaber-instalacao-ubuntu-server-homelab-057](/imagens/2015/11/homelaber-instalacao-ubuntu-server-homelab-057.png)


Minhas recomendações a partir daqui são




  1. Executar o comandos abaixo para atualizar o sistema



    
    sudo su - para ganhar acesso root na máquina
    apt-get update - para fazer o check dos repositórios
    apt-get upgrade - para fazer a atualização dos pacotes instalados.






  1. Instalar o VMware Tools para Linux seguindo esse post


Viu só... não doeu nada :). Hoje em dia, instalar o Linux Ubuntu Server em uma VMware é super rápido e fácil. Se você NUNCA mexeu com Linux antes, vou deixar alguns links com comandos básicos para você ir treinando. Recomendo muito, buscar mais informações, tutoriais no Youtube, livros, etc. O Google é o seu melhor amigo :).

Nos próximos posts, irei mostar como instalar alguns sistemas e servidores e esse post é a base para isso.

Referências:

[su_note radius="0"]

[Comandos básicos do Linux - via Instituto Computação Unicamp](http://www.ic.unicamp.br/~mc102/aulas/laboratorio/comandos_basicos_linux.pdf)

[Comandos básicos para iniciantes - via Viva o Linux](http://www.vivaolinux.com.br/dica/Comandos-basicos-para-iniciantes)

[Comandos Básicos - via Wiki Ubuntu.org](http://wiki.ubuntu-br.org/ComandosBasicos)

[/su_note]

Até o próximo post e não se esqueça de deixar o seu comentário no post, seguir o HomeLaber no [Twitter](https://twitter.com/homelaber) (@Homelaber) e curtir a nossa página no [Facebook](https://www.facebook.com/homelaber) (fb.com/homelaber) para ficar sempre atualizado das novidades do blog.

Estamos participando do desafio [#vDM30in30](http://homelaber.com.br/desafio-vdm30in30/). Acompanhe no [twitter](https://twitter.com/search?q=%23vDM30in30).
