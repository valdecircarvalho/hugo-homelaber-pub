## O que é PoC, para que serve e como fazer!

Olá Homelabers,

Quem aqui costuma fazer PoCs no seu dia a dia?

No meu atual trabalho, conduzir PoCs de diversos produtos e tecnologias faz parte do meu dia a dia. Então resolvi escrever esse artigo para conceituar o que é uma PoC, compartilhar **minha experiência** e dicas e melhores práticas para executar uma boa Poc, assim como o que evitar para que sua PoC não seja um desastre.


## O que é PoC?

Acredito que muitos dos leitores já ouviram essa frase: *- Vamos fazer uma PoC!*

Mas o que exatamente é uma PoC?

O termo **PoC** vem do Inglês **Proof of Concept** ou em bom Português, **Prova de Conceito**.

Se você procurar na wikipedia por PoC vai encontrar a seguinte definição:

> _"**Prova de conceito (PoC)** é a realização de um determinado método ou idéia, a fim de demonstrar sua viabilidade, ou uma demonstração em princípio, com o objetivo de verificar se algum conceito ou teoria tem potencial prático."_

Mas antes, vamos olhar o significado das palavras **Proof of Concept**:

- Proof (Prova) - Evidência ou argumento que define um fato ou verdade
- Concept (Conceito) - Uma idéia abstrata

Uma PoC - pelo ponto de vista de arquitetura de TI - nada mais é de que uma maneira de avaliar um determinado serviço ou produto de acordo com a necessidade de negócio, sendo possível assim validar ou não o seu uso pela empresa, evitando desperdício de recursos (tempo e dinheiro).

Ou seja, a PoC é uma demonstração que visa verificar que uma determinada ideia tem potencial prático. Pode ser uma prova de uma tecnologia falando com outra ou uma determinada solução para um problema técnico ou de negócio ou ainda demonstrar que uma solução ou configuração pode resolver um problema.

## Quando e porque fazer uma PoC

Geralmente o time de arquitetura faz a PoC logo após receber o projeto e a necessidade do negócio, mas isso vai variar de empresa para empresa. A PoC vai apoiar e suportar a decisão por determinado produto ou serviço. É uma maneira de testar na prática, se a solução atende os requisitos de negócio, se vai integrar com aquele sistema legado, se funciona NO SEU AMBIENTE, antes de fechar o negócio e realizar o investimento.

## PoC em TI - O lado do cliente

A realização da PoC pode ser uma iniciativa tanto do cliente como do fornecedor, mas sempre deve partir de uma necessidade do negócio.

Se você está do lado do cliente, solicitando a PoC a um fornecedor, você deve ter bem claro quais são os objetivos que você deseja alcançar, para não perder tempo com o que não é necessário, ou seja, você deve ter um escopo fechado do que quer testar e validar.

- Saber o que você quer tirar da PoC, quais serão os resultados ou o que você quer provar baseado na sua necessidade de negócio - Esse é o principal ponto. Se você não sabe quais são as necessidades do negócio que a PoC precisa resolver, você vai acabar perdendo tempo com coisas que são desnecessárias.
- Dedicar tempo e recursos para executar a PoC com eficiência - A maioria das PoCs acabam não tenho sucesso, pois faltam pessoas ou recursos para executar a PoC. Se a PoC envolve usuários, é impressindível que eles estejam comprometidos com o objetivo final. 
- Atenção aos requisitos para realizar a PoC -  O mesmo vale para recursos de TI. Será necessário provisionar um novo ambiente? Existe capacity para isso? Existe custo envolvido (compra de hardware ou despesas com núvem). Demanda logistica (um appliance no DC - nota fiscal, etc)? Atenção aos detalhes.
- Ter um escopo bem definido do que você deseja testar e validar - Com um escopo bem definido, você será mais acertivo e não perderá tempo com coisas menos importantes. 

>> Evite "testar todas as features" do produto, mantenha o foco no seu objetivo.


## PoC em TI - O lado do fornecedor

Se você for um fornecedor realizando um PoC no seu cliente, deve antes de tudo entender suas necessidades e direcionar a sua PoC para destacar esses pontos no seu produto.

+ Entender as necessidades do cliente (problema a ser resolvido)
+ Definir quem serão os responsáveis e ponto de contato dentro da empresa (cliente)
+ Objetivos da PoC
+ Timeline da Poc
+ Detalhes técnicos
+ Cenários de teste
+ Fatores de Sucesso

Ao final da PoC é muito importante que você garanta que todos os objetivos definidos inicialmente foram cumpridos. Um relatório final é entregue.

## PoC vs Piloto vs Demo

Muitos clientes, costumam fazer muita confusão entre PoC, Piloto e Demo. 

+ **PoC**
  - É uma atividade mais estruturada, como objetivos claros a serem alcançados.
  - Tem começo, meio e fim. 
  - Na grande maioria das vezes não existe comprometimento financeiro por parte do cliente.
  - Validação de uma idéia. A PoC não resolve o problema, apenas valida se o produto PODE resolver o problema
  - 

+ **Piloto** 
  - Geralmente já ouve um investimento financeiro ou comprometimento do cliente. 
  - Target é um público pequeno. 
  - Último passo antes da implantação final.

+ **Demo**
  - Ocorre antes da PoC. 
  - Geralmente não há interação do cliente, o fornecedor apresenta as caracteristicas e informações do produto.
  - Não existe investimento financeiro ou qualquer comprometimento.

## Dicas e melhores práticas

Essas são minhas dicas e melhores páticas de acordo com a minha experiência, nada científico, apenas minhas experiências.

Eu vejo que uma PoC tem 4 grandes fases:

+ Esforço e duração da PoC
+ Escopo da PoC
+ Escolha de Recursos
+ Finalização e critérios de aceitação

Utilize dados reais sempre que possível durante a realização da PoC

What’s the problem?
So, before exhausting yourselves with yet another endless POC process, let’s analyze the most common problems in failed POCs to help you avoid their iteration:

Undefined objectives for POC’s success
“What was that…?” Customer’s requirements are not fully understood by the vendor
Not using the real data Vendors only use sample data for the POC, reluctant to spend the time and effort required to use real data
“Oh, and by the way, I also want to…” Customers usually realize what they want only after they start using the product and vendors are often reluctant to allow refining and adjustments on-the-go.
“Look at me!” POCs show-off “killer” features, instead of customizing the product to solve the customer’s problem
“I’m so pretty” Vendors often see POCs as a validation for their wonderful product rather than an evaluative tool for improving the product



## Como não fazer uma PoC (o que evitar)

A PoC não pode virar Produção - isso é um erro muito comum e que acontece demais nas empresa.

Falta de engajamento das pessoas chave - todos devem estar envolvidos em validar o produto, sempre seguindo o planejamento e os objetivos definidos



+ https://pt.wikipedia.org/wiki/Prova_de_conceito 
+ https://gaea.com.br/por-que-e-importante-fazer-uma-prova-de-conceito/ 
+ https://blog.nectarcrm.com.br/o-que-e-prova-de-conceito/ 
+ https://www.napratica.org.br/o-que-e-prova-de-conceito/ 
+ https://www.cbds.com.br/blog/aplicacao-de-uma-prova-de-conceito/ 
+ https://en.wikipedia.org/wiki/Proof_of_concept 
+ https://www.entrepreneur.com/article/307454 
+ https://www.etlsolutions.com/an-example-of-a-successful-proof-of-concept/ 
+ https://it.toolbox.com/blogs/craigborysowich/technology-proof-of-concept-sample-030510 
+ https://www.techjini.com/blog/proof-of-concept/

