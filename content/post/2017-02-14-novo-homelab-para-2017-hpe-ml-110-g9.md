---
author: Valdecir Carvalho
date: 2017-02-14 10:00:05+00:00
draft: false
title: Novo Homelab para 2017 - HPE ML 110 G9
type: post
url: /novo-homelab-para-2017-hpe-ml-110-g9/
categories:
- Homelab
tags:
- homelab
- homelab vmware
- HP ML110 G9
- HPE ML110 G9
- ML110 G9
- servidor
- Servidor HP
- vmware homelab
---

Olá Homelabers!!

Quem acompanha o blog há algum tempo, deve ter visto que no [começo do ano passado](http://homelaber.com.br/homelab-movel-thinkpad-w510/) eu consegui um Laptop para usar como lab remoto. Um Lenovo Thinkpad W510 Intel Core i7 com 32GB de RAM, 2 SSDs, etc, etc. Um maquinão que eu acabei usando pouco. No final de novembro pintou uma oportunidade de vendê-lo e com a grana da venda e mais uns trocados, consegui comprar um servidor novinho para o meu lab.

![](/imagens/2017/02/hp-proliant-ml110-gen9-server_09rb__34880.1449015387.1280.1280-154x300.png)
Depois de muito pesquisar acabei optando pelo **HPE ProLiant ML110 G9**




      * Intel® Xeon® **E5-1600 v3**
      * **64GB RAM** (non-ECC) - [Corsair DDR4 (4X pentes de 16GB)](https://www.corsair.com/pt/pt/Categorias/Produtos/Mem%C3%B3ria/Mem%C3%B3ria-tradicional/Corsair-Memory-%E2%80%94-16GB-%281x16GB%29-DDR4-2133MHz-CL15-DIMM/p/CMV16GX4M1A2133C15)
      * 2X HDs 2TB 7200 RPM
      * 2X SSD 256GB
      * <del>1X HD 1TB 10K RPM</del>


Em breve, pretendo fazer um upgrade no meu servidor para deixa-lo com 128GB de RAM e 2X SSDs 500GB, mas por enquanto ele está me servindo MUITO BEM!

Todas as especificações desse servidor podem ser vistas [aqui](https://www.hpe.com/br/pt/product-catalog/servers/proliant-servers/pip-404.html). Na configuração padrão ele vem com 8GB e 1X HD de 1TB.

Estou gostando bastante da performance desse servidor. A primeiro momento pode parecer um pouco overkill para um lab, mas para rodar NSX com menos de 64GB fica bastante complicado.

<!-- more -->Como disse, eu pesquisei bastante antes de fazer a compra. Hoje os 3 maiores players (Dell, HPE e Lenovo) oferecem servidores de entrada e com basicamente as mesmas especificações (8GB RAM e 1X HD 1TB) e entre eles, o HPE ML110 G9 foi o que mais se destacou. Veja porque:

Meus pré-requistos eram:




      * Suportar pelo menos 256GB de RAM
      * Suportar memória NON-ECC
      * Suportar mínimo de 4 discos
      * Baixo consumo de energia
      * Silencioso
      * Torre
      * Processador Xeon mais novo possível
      * Mínimo de 64GB de RAM
      * Budget R$5000,00




### Servidores Candidatos:



[![](/imagens/2017/02/dell-logo.jpg)
](http://www.dell.com/br/empresa/p/poweredge-t130/pd?oc=ent-bpt130iibpt3&model_id=poweredge-t130)







#### [Dell PowerEdge T130](http://www.dell.com/br/empresa/p/poweredge-t130/pd?oc=ent-bpt130iibpt3&model_id=poweredge-t130)



Essa máquina tem um processador [Intel® Xeon® Processor E3-1220 v5](http://ark.intel.com/PT-BR/products/88172/Intel-Xeon-Processor-E3-1220-v5-8M-Cache-3_00-GHz) (2015) e suporta no máximo 64GB de memória RAM

![](/imagens/2017/02/lenovo-logo.png)








#### [Lenovo ThinkServer TS140](http://shop.lenovo.com/br/pt/servers/thinkserver/towers/ts140/)



Essa máquina tem um processador [Intel® Xeon® E3-1200 v3](http://ark.intel.com/Pt-Br/products/75052/Intel-Xeon-Processor-E3-1220-v3-8M-Cache-3_10-GHz) que é antigo (2013) e suporta no máximo de 32GB de memória RAM.

![](/imagens/2017/02/hpe-logo.png)








#### [HPE ProLiant ML110 G9](https://www.hpe.com/br/pt/product-catalog/servers/proliant-servers/pip-404.html)



Essa máquina tem um processador [Intel® Xeon® E5-1600 v3](http://ark.intel.com/pt-br/products/82761/Intel-Xeon-Processor-E5-1603-v3-10M-Cache-2_80-GHz) (2014) e suporta no máximo 256GB de memória RAM, ou seja, perfeito para o que eu preciso e o que me garante bastante espaço para upgrades.



### Valores:



Falando de valores, esses servidores são bastante acessíveis em sua **configuração básica** (8GB RAM) e o seu preço varia **em torno** de **R$2500,00 e R$3000,00**. Você consegue encontrar esses servidores em todos os maiores sites de e-commerce e também no Mercado Livre. Eu paguei nessa configuração pouco mais de R$4500,00 em uma loja de Campinas (SP) que recomendo, pois os caras foram muito atenciosos. Vou deixar o contato deles aqui embaixo, procure pelo Rodrigo Caseiro.

Depois que eu comprei esse servidor, mais dois amigos aqui do blog e vExperts (Fernando Silva @vmnetbrasil do [VMNetBrasil](http://vmnetbrasil.com.br/) e Ricardo Conzatti @ricardoconzatti do [Solutions4Crowds](http://solutions4crowds.com.br/)) também acabaram comprando e pelo que tenho conversado com eles, estão bastante satisfeitos. Se vocês não acreditam em mim, conversem com eles :)



### Considerações finais:






      * Esse servidor não faz barulho nenhum. O meu switch faz mais barulho do que ele.
      * Ele fica ligado 24X7 e não notei nenhum aumento significativo na conta de luz
      * Montar ou Comprar novo - HOJE eu acho mais vantagem comprar um novo, você tem garantia, sabe que vai funcionar, não precisa ficar correndo atrás de peças E pelas contas que eu fiz, acaba saindo mais barato! Mas pesquise antes!


Até mais pessoal! Se você quiser saber mais alguma informação sobre o servidor que eu não coloquei aqui, escreva nos comentários.



[su_box title="TNT INFO" box_color="#fffb82" title_color="#000000"][http://www.tntinfoloja.com.br/](http://www.tntinfoloja.com.br/)
Rodrigo Caseiro
(19) 98239-5449 (Oi) / (19) 3307-5263 (Fixo)
rdgcaseiro@gmail.com / tntinfo@tntinfo.com.br[/su_box]
