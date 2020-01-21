---
author: Valdecir Carvalho
date: 2015-11-04 12:50:19+00:00
draft: false
title: Linux Dashboards - Ferramentas simples para monitorar o seu servidor Linux
type: post
url: /linux-dashboards-ferramentas-simples-para-monitorar-o-seu-servidor-linux/
categories:
- Blog
tags:
- '#vDM30in30'
- como-instalar
- Dashboard
- eZServer Monitor
- Ferramentas
- GitHub
- homelab
- linux
- Linux-Dash
- Monitoração
- tools
- ubuntu
---

Olá Homelabers!

![virus-aquarium](/imagens/2015/11/virus-aquarium.png)


Nesse post vou apresentar a vocês 3 opções de ferramentas simples, porém muito poderosas para monitorar o seu servidor Linux.

Eu gosto muito de "fuçar" no GitHub e foi lá que encontrei essas ferramentas.

Todas elas necessitam apenas de um servidor Linux com Apache (ou outro servidor web) e Php instalado e podem ser executadas em todas as distribuições.

<!-- more -->

Antes de mostrar como instalar cada uma das ferramentas, vamos instalar os pacotes básicos e comum aos 3 sistemas.

Como premissa, vou considerar que o Apache já está instalado no seu servidor.

Execute o comando abaixo como root:


    
    apt-get install unzip php5 libapache2-mod-php5



Agora vamos a apresentação e instalação de cada ferramenta.



## **Linux Dash**



[https://github.com/afaqurk/linux-dash](https://github.com/afaqurk/linux-dash)

Esse é o meu Dashboard predileto. Ele é simples, mas ao mesmo tempo mostra bastante informações úteis sobre o servidor. Possui temas, animações e é super leve.

Você pode acompanhar com gráficos em tempo real informações sobre Memórioa, CPU, Processos, Disco, Rede, etc.

![homelaber-simples-linux-monitores-em-php-003](/imagens/2015/11/homelaber-simples-linux-monitores-em-php-003.png)


Instalação:

Baixar o arquivo do GitHub


    
    wget https://github.com/afaqurk/linux-dash/archive/master.zip -O linux-dash.zip



Descompactar o arquivo


    
    unzip linux-dash.zip



Mover os arquivos para a pasta html do Apache


    
    cp -v -R linux-dash-master/ /var/www/html/dash/



Reiniciar o Apache


    
    service apache2 restart



Abrir o browser e navegar ate o endereço: http:///dash/



## **eZ Server Monitor**



[https://github.com/shevabam/ezservermonitor-web](https://github.com/shevabam/ezservermonitor-web)

Esse é a mais customizável das 3 ferramentas apresentadas aqui. Possui informações do Sistema, Carga, Disco, CPU, Rede, etc.

É possível customizar o tema (cor do sistema), os módulos apresentados, etc. Para maiores informações, acesse a página do desenvolvedor [http://www.ezservermonitor.com/esm-web/documentation](http://www.ezservermonitor.com/esm-web/documentation)

![homelaber-simples-linux-monitores-em-php-002](/imagens/2015/11/homelaber-simples-linux-monitores-em-php-002.png)


Instalação:

Baixar o arquivo do GitHub


    
    wget https://github.com/shevabam/ezservermonitor-web/archive/master.zip -O ezservermonitor-web.zip



Descompactar o arquivo


    
    unzip ezservermonitor-web.zip



Mover os arquivos para a pasta html do Apache


    
    cp -v -R ezservermonitor-web-master/ /var/www/html/ezmonitor/



Reiniciar o Apache


    
    service apache2 restart



Abrir o browser e navegar ate o endereço: http:///ezmonitor/



## **Dashboard**



[https://github.com/jenssegers/dashboard](https://github.com/jenssegers/dashboard)

Esse é o mais simples das 3 ferramentas apresentadas. Ela funciona apenas no Ubuntu. Apresenta informações sobre Uptime, Memória, CPU, Disco e Network.

![homelaber-simples-linux-monitores-em-php-001](/imagens/2015/11/homelaber-simples-linux-monitores-em-php-001.png)


Instalação:

Baixar o arquivo do GitHub


    
    wget https://github.com/jenssegers/dashboard/archive/master.zip -O dashboard.zip



Descompactar o arquivo


    
    unzip dashboard.zip



Mover os arquivos para a pasta html do Apache


    
    cp -v -R dashboard-master/ /var/www/html/dashboard/



Reiniciar o Apache


    
    service apache2 restart



Abrir o browser e navegar ate o endereço: http:///ezmonitor/

É isso! Finalizamos mais um post. Agora é a sua vez, instale essas ferramentas em seus servidores, explore, veja o que mais lhe seja útil, mostre aos seus colegas...

Em breve, pretendo fazer um post apresentando verdadeiras ferramentas de monitoração usadas pelas empresas. Aguarde!

Até o próximo post e não se esqueça de deixar o seu comentário no post, seguir o HomeLaber no [Twitter](https://twitter.com/homelaber) (@Homelaber) e curtir a nossa página no [Facebook](https://www.facebook.com/homelaber) (fb.com/homelaber) para ficar sempre atualizado das novidades do blog.


