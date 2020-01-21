---
author: Valdecir Carvalho
date: 2015-11-06 23:59:01+00:00
draft: false
title: AutoLab - O script que facilita o setup do seu HomeLab
type: post
url: /autolab-o-script-que-facilita-o-setup-do-seu-homelab/
categories:
- Blog
tags:
- '#vDM30in30'
- autolab
- automation
- automatização
- blog vmware
- como instalar lab vmware
- homelab
- how-to
- infinio
- lab vmware
- labguides
- laboratório vmware
- nick marshall
- script
- vblogs
- vmware
---

Olá Homelabers!

Nesse post vou mostrar a vocês uma "coleção de scripts" que automatiza a criação de um lab VMware completo. Esse "produto" se chama [AutoLab](http://www.labguides.com/autolab/) e foi criado pelo [Nick Marshall](http://nickmarshall.com.au/about/) - autor dos melhores livros sobre VMware que eu já li até hoje - [Mastering VMware vSphere 5.5](http://www.amazon.com/Mastering-VMware-vSphere-Nick-Marshall/dp/1118925157/ref=asap_bc?ie=UTF8) e  [Mastering VMware vSphere 6](http://www.amazon.com/Mastering-VMware-vSphere-Scott-Lowe/dp/1118661141/ref=asap_bc?ie=UTF8) (assunto para um outro post).

![logo-long-autolabs](/imagens/2015/11/logo-long-autolabs.png)


Com o AutoLab é possível subir um ambiente completo de VMware - ESXi, vCenter, etc em questão de 2 ou 3 horas e com um esfoço mínimo. É uma ferramenta excelente para a criação de um PoC (Prova de Conceito) onde se precisa subir um Lab para demostração de alguma feature do produto e depois destruí-lo.

<!-- more -->

No site do AutoLab existe uma documentação super bem escrita e com todo o passo-a-passo para a instalação e deploy completo, links para download dos software necessários, etc.

O Autolab está disponível para ESXi, VMware Fusion (Mac) e VMware Workstation (Windows) e também para um serviço de núvem chamado [Ravello](https://www.ravellosystems.com/) e o script instala as versões 5, 5.5 e 6.0 do vSphere. Na data de publicação desse post, o AutoLab está na versão 2.6

![AutoLab-color-leftside-72-dpi](/imagens/2015/11/AutoLab-color-leftside-72-dpi.png)




<blockquote>**Eu não recomendo usar o AutoLab para montar o seu primeiro laboratório ou o seu HomeLab**, pois como ele automatiza o processo por inteiro, você acaba não aprendendo como realizar a instalação, não passa pelas dificuldades e não erra - _**errar é a melhor forma de aprender**_.</blockquote>



De qualquer maneira, sugiro que você teste o script, faça uma instalação e se necessário use no seu trabalho, na sua monografia - olha ai a idéia, fazer uma monografia sobre virtualização, etc. :)

Para baixar o Autolab, acesse o [link](http://www.labguides.com/autolab/) e faça o seu registro. O projeto AutoLab é patrocinado pela empresa [Infinio](http://www.infinio.com/) e seus dados serão repassados a eles - EU não vejo problema nisso, pois é uma troca, seu e-mail pelo AutoLab.

Após o registro, você será redirecionado para a página de [Download](http://www.labguides.com/autolab/autolab-download/?submissionGuid=0f0f0893-7dfd-4d36-b08e-6ece790f0191). A **primeira coisa que você deve baixar** é o **[Deployment Guide](http://www.labguides.com/downloads/AutoLab%202.6%20vSphere%20Deployment%20Guide.pdf)**. Leia todo o documento - está em Inglês - e a partir dai comece a baixar os pacotes necessários. Preparação é a chave para o sucesso  8-O

Requisitos de Hardware:

Os requisitos de hardware para subir esse lab não são muito exigentes. A documentação fala em um Intel i7, mas eu acredito que deva subir e rodar (não espere aqueeeeela performance) em um Intel i5 e 16Gb RAM. Se você não tiver 16GB, tente subir em 8GB mesmo. Deve funcionar.

<table cellpadding="2" cellspacing="2" border="1" >
<tbody >
<tr >

<td >**Hardware**
</td>

<td >**Minimum**
</td>

<td >**Great Choice**
</td>

<td >**Used to build the lab**
</td>
</tr>
<tr >

<td >**CPU**
</td>

<td >Dual Core, 64Bit
</td>

<td >Quad Core, i7
</td>

<td >i7 Quad Core
</td>
</tr>
<tr >

<td >**RAM**
</td>

<td >16GB
</td>

<td >How much can you afford?
</td>

<td >32GB
</td>
</tr>
<tr >

<td >**Hard Disk**
</td>

<td >120GB free space
</td>

<td >200GB SSD free space
</td>

<td >240 GB SSD
</td>
</tr>
<tr >

<td >**Operating System**
</td>

<td >64 Bit
</td>

<td >ESXi 5
</td>

<td >Windows 7 64Bit
</td>
</tr>
<tr >

<td >**Virtualization Software**
</td>

<td >VMware Player (untested)
</td>

<td >ESXi 5
</td>

<td >VMware Workstation 10
</td>
</tr>
</tbody>
</table>

Vamos lá... tente fazer a instalação do Autolab e volte aqui para deixar o seu comentário! Se conseguiu, se teve dificuldades. Compartilhe conosco o resultado.

Eu pretendo fazer um post sobre a instalação do Autolab em um futuro não muito distante.

Links:

[Facebook da LabGuides](https://www.facebook.com/labguides/) - Acesse a página e deixe o seu joinha

[Twitter do Nick @nickmarshall9](https://twitter.com/nickmarshall9/)

[Blog do Nick Marshall](http://nickmarshall.com.au/)

[AutoLab](http://www.labguides.com/autolab/)

Até o próximo post e não se esqueça de deixar o seu comentário no post, seguir o HomeLaber no [Twitter](https://twitter.com/homelaber) (@Homelaber) e curtir a nossa página no [Facebook](https://www.facebook.com/homelaber) (fb.com/homelaber) para ficar sempre atualizado das novidades do blog.


