---
author: alexandre.parreira
date: 2016-05-13 03:36:09+00:00
draft: false
title: Preparando uma VM Red Hat Enterprise Linux para Desenvolvimento
type: post
url: /preparando-uma-vm-red-hat-enterprise-linux-para-desenvolvimento/
categories:
- Tutoriais
series:
- VM RHEL para Desenvolvimento
tags:
- como-instalar
- Desenvolvimento
- homelab
- how-to
- linux
- RHEL
- vmware
---

**![ale-open-source](/imagens/2016/05/open-source-300x209.jpg)
**

Olá Homelabers!

Neste artigo de estréia pretendo apresentar um guia para a preparação de uma VM com o Red Hat para desenvolvimento em múltiplas plataformas.

Esta VM deve servir de base para outros artigos onde entraremos nos detalhes mais específicos no desenvolvimento de aplicações.

**Nível**: **Fácil.**

<!-- more -->

A idéia a produzir uma série modular de artigos de forma que, dependendo do objetivo de utilização, somente os componentes necessários sejam abordados.

Não poderia deixar de agradecer e cumprimentar o Valdecir Carvalho pelo convite e iniciativa.



### Sobre o RHEL



Escolhi utilizar o RHEL pois é uma das distribuições mais sólidas e utilizadas no ambiente corporativo. Algumas plataformas estão homologadas para rodarem sobre ele o que garante um suporte adequado. É claro que podemos sempre usar outras distribuições porém, por experiência, algumas precisam de alguns truques extras para executar adequadamente alguns componentes.

Com a liberação de uma versão gratuita para desenvolvedores pela Red Hat, conforme publicado [aqui](http://homelaber.com.br/red-hat-lanca-versao-de-desenvolvedor-do-rhel-gratis/) neste blog, não vejo motivos para não se aprofundar na sua utilização, agora de maneira bem legal.



### Virtual Machine



Utilizarei neste artigo o [VMware](https://www.vmware.com/products/workstation/) que é um produto de ponta no mercado de virtualização. No entanto a VM pode também ser criada utilizando [Oracle VM VirtualBox](https://www.virtualbox.org/).



### Recursos do Host



Estou utilizando um notebook Lenovo T430 com windows 7 conforme abaixo:

![](/imagens/2016/05/espec-lenovo-t430.png)


É importante também saber quantos cores possui seu processador para poder dimensionar melhor a utilização de recursos na VM. No caso do Windows 7 podemos utilizar o aplicativo _**msinfo32.exe** _e obter a informação conforme abaixo:

![ale-espec-lenovo-t430-2](/imagens/2016/05/espec-lenovo-t430-2-1.png)


Neste caso temos 2 núcleos (cores).

Dependendo do objetivo da VM pode ser necessário consumir mais ou menos recursos do Host. Neste cenário o Host é o SO instalado na máquina (Windows 7) e o Guest é o que será instalado na VM (RHEL).



### Començando



Vamos criar uma nova VM:

![ale-new-vm-1](/imagens/2016/05/new-vm-1.png)


No diálogo Escolha _**Custom **_e clique em _**Next**_.

Deixe _**Hardware compatibility**_ na opção default selecionada e clique em _**Next**_.

Após vamos selecionar a última opção para instalar o SO depois evitando que o VMware tome algumas decisões importantes por nós.

![ale-new-vm-15](/imagens/2016/05/new-vm-15.png)


Clique em **_Next_**.

Escolha um nome e local onde serão armazenados os arquivos da VM.

![ale-new-vm-4](/imagens/2016/05/new-vm-4-1.png)


Clique em _**Next**_.

Vamos agora escolher o número de CPU disponibilizados para o Guest SO. Para mais informações sobre vCPUs acesse este [link](http://pubs.vmware.com/fusion-6/index.jsp#com.vmware.fusion.help.doc/GUID-065E8496-4320-4A54-B1B8-F40C84CA8DAF.html).

![ale-new-vm-4b](/imagens/2016/05/new-vm-4b.png)


Clique em _**Next**_.

Agora vamos definir a quantidade de memória RAM estará disponível para o Guest. No meu caso vou utilizar o mais recomendado de 8 GB. Novamente esta quantidade pode variar conforme o objetivo da VM. E isto pode ser modificado futuramente.

![ale-new-vm-6](/imagens/2016/05/new-vm-6.png)


Clique em _**Next**_.

Deixaremos as configurações de rede no default. Futuramente, se tivermos necessidades específicas para o Guest como por exemplo possuir endereço de IP específico permitindo funcionar como servidor e até mesmo consumir serviços do Host, podemos mudar para o modo Bridged por exemplo.

![ale-new-vm-8](/imagens/2016/05/new-vm-8.png)


Clique em _**Next**_.

Nos dois próximos passos vamos também deixar o default.

![ale-new-vm-9](/imagens/2016/05/new-vm-9.png)


Clique em _**Next**_.

![new-vm-10](/imagens/2016/05/new-vm-10.png)


Clique em _**Next**_.

Agora vamos criar um novo disco virtual. Obviamente caso tivéssemos um disco criado e se estivemos movendo imagens de uma máquina para outra poderíamos utilizar as outras opções.

![ale-new-vm-11](/imagens/2016/05/new-vm-11.png)


Vamos agora escolher o tamanho do disco que estará disponível para a VM. Como eu tenho uma idéia de minhas necessidades futuras eu vou começar com _**50 GB**_ mas o default é _**20 GB**_. Dependendo da distribuição Linux sendo instalada a necessidade de espaço em disco pode ser muito menor.

Vamos também optar por armazenar em um único arquivo. No cenário projetado não há motivo por dividir em múltiplos arquivos. Casos específicos indicados para a divisão seriam os quais se está utilizando um sistema com limitação no tamanho máximo dos arquivos, como FAT32, ou se projetarmos discos a partir de 100 GB onde poderíamos começar a visualizar uma melhoria na performance.

Um outro ponto importante é que vamos escolher já alocar todo o espaço em disco informado (50 GB) para a VM. Por experiência posso dizer que alguns SO instalam corretamente porém, algumas instalações de componentes falham ao detectar o tamanho total do disco. Por isso é **muito importante** já alocar o espaço total do disco.

Há um post aqui no blog falando sobre estas opções [aqui](http://homelaber.com.br/back-to-basics-diferencas-entre-tipos-de-disco-em-uma-vm-thin-vs-thick-provision/).

![ale-new-vm-12](/imagens/2016/05/new-vm-12.png)


Clique em _**Next**_.

Depois confirme o nome do arquivo a ser criado e clique em _**Next**_.

![ale-new-vm-13](/imagens/2016/05/new-vm-13.png)


Pronto as configurações da nova VM estão definidas e vamos agora avançar para a instalação do RHEL como Guest SO na VM. Como definimos para alocar todo o tamanho do disco na criação o processo irá demorar um pouco mais.

![ale-new-vm-14](/imagens/2016/05/new-vm-14.png)


Clique em _**Finish**_.



### Instalando o RHEL



Após a criação da VM estaremos com ela limpa para iniciar a instalação do RHEL.

No lado direto da janela clique em _**CD/DVD (SATA)**_.

![ale-install-vm-1](/imagens/2016/05/install-vm-1.png)


Agora vamos marcar a opção _**Use ISO image file**_ e vamos selecionar a ISO que baixamos do site da Red Hat.

![ale-install-vm-2](/imagens/2016/05/install-vm-2.png)


Clique em _**OK**_.

Vamos iniciar a VM clicando em _**Power on this virtual machine**_.

A VM irá inicializar a partir da imagem ISO montada na unidade de CD/DVD. Vamos selecionar a primeira opção para instalar o RHEL na VM. Para direcionar o input para a janela da VM basta clicar dentro da janela ou pressionar CTRL + G.

![ale-install-vm-3](/imagens/2016/05/install-vm-3.png)


Pressione _**Enter** _para começar o processo de instalação.

Vamos manter a linguagem selecionada em _**English (United States)**_. Esta é uma preferência pessoal e vocês podem ajustar conforme sua preferência.

![ale-install-vm-4](/imagens/2016/05/install-vm-4.png)


Vamos diretamente configurar a _**Network & Host Name**_ para permitirmos que a definição dos parâmetros de instalação possa já obter dados da internet.

![ale-install-vm-5](/imagens/2016/05/install-vm-5.png)


Dependendo do hardware que está disponível estas opções podem ser diferentes. Porém, em um ambiente básico estará disponível um adaptador de rede selecionado e vamos ativá-lo clicando no botão _**ON/OFF**_ no canto superior direito.

![ale-install-vm-6](/imagens/2016/05/install-vm-6.png)


Após a ativação do adaptador de rede a VM deverá receber um endereço de IP e estar conectada à rede e internet.

Clique em _**Done** _no campo superior esquerdo da janela.

Vamos clicar em _**Date & Time**_.

Nesta janela selecione a posição de seu fuso horário clicando no posição no mapa e se necessário selecionando nas caixas superiores a região e cidade exatas. Vamos ativar também a opção Network Time para manter o horário atualizado com os servidores mundiais.

![ale-install-vm-7](/imagens/2016/05/install-vm-7.png)


Vamos agora configurar o teclado. Para tanto clique em _**Keyboard**_.

Na janela seguinte vamos clicar no símbolo _**+**_ no canto inferior esquerdo para adicionar um novo layout.

Na lista busque por _**Portuguese (Brazil)**_ e clique em Add.

Remova o layout _**English (US)**_ clicando no sinal de _**-**_ no canto inferior esquerdo.

![ale-install-vm-8](/imagens/2016/05/install-vm-8.png)


Sugiro testar o layout escolhido para evitar alguma dor de cabeça e trabalho adicional logo de início. Utilize a caixa _**Test...**_ no canto superior direito para testar especialmente as teclas **/ \ . : | - _ ?**

Clique em _**Done** _após terminar.

Vamos agora definir os softwares a serem instalados.

Cliquem em _**Software Selection**_.

Na caixa da esquerda, _**Base Environment**_, selecione _**Server with GUI**_. Desta forma teremos um sistema gráfico para trabalhar com o desenvolvimento de softwares.

Após selecionar a opção acima, na caixa da direita _**Add-Ons for Selected Environment**_, localize e marque a opção KDE. Assim terá a opção de usar o Gnome ou KDE, duas interfaces gráficas diferentes, conforme sua preferência.

![ale-install-vm-9](/imagens/2016/05/install-vm-9.png)


Clique em _**Done**_.

Vamos por fim definir as configurações de particionamento dos discos.

Clique em _**Installation Destination**_.

Basta clicar em _**Done** _para confirmar o particionamento automático do disco.

![ale-install-vm-10](/imagens/2016/05/install-vm-10.png)


Após todos estas definições estamos prontos para prosseguir com instalação.

Clique em _**Begin Installation**_.

Enquanto o sistema é instalado vamos aproveitar e definir as senhas de Root e um usuário para acesso.

Clique em _**ROOT PASSWORD**_ para definir a senha do _**ROOT**_.

![ale-install-vm-11](/imagens/2016/05/install-vm-11.png)


Clique em _**Done**_. Talvez seja necessário clicar 2 vezes para confirmar caso a senha seja considerada fraca.

Clique em _**USER CREATION**_ para criar o seu usuário para acesso.

![ale-install-vm-12](/imagens/2016/05/install-vm-12.png)


Clique em _**Done**_. Talvez seja necessário clicar 2 vezes para confirmar caso a senha seja considerada fraca.

Vamos aguardar o término da instalação.



### Iniciando o Sistema



Ao término da instalação clique em _**Reboot** _no canto inferior esquerdo para reinicializar o sistema.

![ale-install-vm-13](/imagens/2016/05/install-vm-13.png)


Após a reinicialização o sistema nos solicita a escolher a opção de inicialização.

Vamos escolher a _**primeira opção**_ e teclar _**Enter**_.

![ale-install-vm-14](/imagens/2016/05/install-vm-14.png)


Após a inicialização será necessário ainda informar a informações de licença.

Clique em _**LICENSE INFORMATION**_.

![ale-install-vm-15](/imagens/2016/05/install-vm-15.png)


Recomendamos analisar as informações quanto as direitos e deveres estabelecidos e contratados.

Quando estiver ponto marque a caixa _**I accept the license agreement**_ no canto inferior esquerdo para aceitar os termos apresentados, caso esteja de acordo. Após, clique em _**Done** _no canto superior direito.

Deixaremos o ítem _**Subscription Manager**_ não registrado por enquanto pois precisaremos efetuar alguns ajustes mais a frente para realizar o assinatura e usufruir do suporte e atualizações oficiais.

Clique em _**Finish Configuration**_ no canto inferior direito para prosseguir.

Neste momento devemos ser levados à tela inicial de login. Clique no nome de seu usuário, informe a senha cadastrada.

![ale-install-vm-17](/imagens/2016/05/install-vm-17.png)


Já na área de trabalho  serão apresentados informativos educativos porém, podemos fechar e acessar estas informações a qualquer momento posteriormente para aprender mais sobre o ambiente e sua operação.

![install-vm-18](/imagens/2016/05/install-vm-18.png)


Pronto, nossa instalação básica está completa.

Foi um longo caminho até aqui. Temos agora um ambiente inicial para começar a desenvolver nossos projetos sobre uma plataforma robusta, aceita e certificada pelo mercado.

_**Considerações Finais**_

Temos alguns ajustes pós instalação que serão importantes para uma melhor usabilidade do ambiente. Estes serão apresentados em um novo artigo.

Gostaria de agradecer a todos por acompanharem aqui.

Dúvidas e questionamentos não hesitem em postar no comentários que na medida do possível tentarei responder a todas ou buscar mais informações no intuito de ajudar na resolução.

Desejo desde já paz e sucesso a todos em suas jornadas de estudos e evolução.

Grande abraço.
