Fala pessoal tranquilo?

Vamos lá!
---
INTRO

Hoje quero apresentar pra vocês o vim e o poder de seu uso de forma que ele possa enriquecer e impactar e muito na nossa produtividade, não só no dia a dia como também ele possa se tornar até mesmo um a softskill melhorando até mesmo a nossa interação com o hardware.

Nosso trabalho é repetitivo por natureza, incluso nesta tarefa, estamos sempre fazendo pequenas mudanças em vários lugares ou movimentar em volta de algum documento ou código e nisso repetimos várias ações e repetimos muitas teclas e cursor.
O VIM é otimizado para esta repetição, ele é eficiente em registrar ações recentes. Aqui e nesse ponto queria muito reforçar que a minha intenção é mostrar que com a interpretação do VIM não apenas como um simples e leve editor de texto, mas sim na forma em que ele trabalha e interpreta em conjunto do aprendizado de comandos (e quando digo aprendizado de comandos, não é decoreba, e sim ter a memória muscular desses caminhos, aliados ao saber "conversar com o VIM"), a sua produtividade pode acelerar de forma muito significativa e é esse o objetivo dessa nossa talk de hoje.

Antes de seguir, queria muito fazer um disclaimer aqui. Estou a pouco tempo na empresa.. história do sysadmin.. mas quis muito trazer este conteúdo mesmo sabendo que existe uma galera de peso aqui e que muitas vezes posso chover no molhado, contudo o grande ponto chave aqui, é trazermos um olhar a pequenas habilidades na nossa rotina que pode ser empoderadoras no ponto de vista de domínio de máquina, agilidade e estes são os grandes pontos aqui.


Historia do vim
---
O vim nada mais é que o acronimo de Vi Improved, há no wikipedia dizendo ser também o VI Imitation, sendo, free e de código aberto estando sob a licenca GNU General Public License.
Me permitam abrir um parenteses, mesmo este não sendo o objetivo da nossa talk de hoje, acredito sabiamente que é sempre válido termos consciencia com relação as liçencas pois diariamente esbarramos neste aspecto seja quando estamos apenas usando, copiando, compartilhando e até mesmo criando nossos códigos. O VIM sob a GPL que por sua vez tem os 4 pilares da liberdade GNU da Free Software Foundation (FSF) de software que são resumidamente: Liberdade no 0: Liberdade de executar o programa para qualquer propósito; Liberdade n1: Liberdade de estudar como o programa funciona e adptá-lo a sua necessidade; Liberdade no 2 Redistribuir cópias de modo que possa ajudar ao seu próximo; Liberdade no 3: A liberdade de aperfeiçoar e liberar essas melhorias de modo que toda comunidade beneficie deles.
Dada as regras e essa importante sinalização o VI que teve sua origem em 1976 e o VIM em 1991 ( um 30tão responsa ), naquela época existiam apenas computadores centrais, e dada a comparação de hoje principalmente com a época eram computadores muito mais lentos com pequenos Kb de memória, e o acesso a esses computadores eram através do que a gente conhece hoje como TTY (Teletypewriter), Ainda na época de suas origens o VI em 1976 criado por Bill Joy era chamado de "ex" e em 91 Bram Moolenaar cria o VIM. Hoje ele está disponivel a todos os sistemas operacionais, foi eleito em 2006 o mais popular entre os leitores do Linux Journal e de acordo com o stack overflow o vim era o editor de texto mais popular.
O VIM sendo um editor de texto e com enfase no terminal - antes chamado de "terminal burro", o foco está exclusivamente no teclado, é um editor bastante portável e leve. Tem um manual bastante rico (rico as vezes até demais) além de um tutorial embutido que ajuda bastante não só quem está começando como também ao pessoal que quer melhorar constante. Na minha opnião o VIM tem uma curva de aprendizado gigantesca e, mesmo com um bom tempo de uso e até mesmo preparando esta apresentação aprendi muita coisa, contudo, mesmo sendo a primeira vista complexo, conforme a memória muscular vai incorporando algumas teclas, atalhos e até mesmo plugins o que fica no final é apenas o arrependimento de não saber de certas coisas antes.
Falei recentemente de portabilidade e colocando na conta, este é um de vários fatores que me motivaram nessa talk, uma vez que ele está presente nativamente em várias distribuições, é extremamente leve tanto em tamanho quanto na irrelevante necessidade de poder de processamento ( logicamente sem considerar plugins e addons ). E quantas vezes não foi necessário analisar um log, editar um simples arquivo em um servidor ou até mesmo um container? Hoje apesar de termos uma volatilidade muito grande de dados, junto da velidade de acesso, um editor simples e minimalista pode nos ajudar não só na edição como em vários outros aspectos. 
E sobre plugins, a comunidade do vim é enorme e existem sites e fóruns destinados ao nosso amigo old school a quem vos falo, horas confesso que quero testar tanto plugin que alguns ficam num limbo esperando serem usados. E nessa hora que é muito legal pensarmos na infraestrutura como código, pois o vim possui seu arquivo de configuração - que vou falar em breve sobre ele - onde eu mesmo tenho o meu versionado e sempre que vejo que vou passar a ter acesso frequente a um servidor ou máquina, rapidamente estou ambientado com minhas customizações e recomendo a todos que o façam sempre.




-
# Modos de operacao vim

Agora chega de conversa e vou tentar mostrar um pouco do que já dá pra fazer. E um novo disclaimer aqui, não quero ensinar, nem quero que decorem, quero apenas que entendam a minha mensagem do vim com produtividade e possam tentar aplica-los para somar ao dia a dia de vocês, então sem decoreba, eu recomendo que treinem o vim até mesmo fora do trabalho para que não se torne uma experiencia frustrante já que a curva de aprendizado é grande no começo, já que haverá momentos que é sim melhor pegar um mouse e clicar. 
Uma dica que já passo por hora é que não tentem aprender tudo de uma vez, tentem ir colocando em prática cada nova funcionalidade até que ela esteja na sua memória muscular, não tentem aprender várias coisas de uma vez. Pense nesse aprendizado como andar de bicicleta, no começo é o foco em ter o equilíbrio até chegar o ponto da autonomia de ir do ponto X ao ponto Y sem pensar em se manter equilibrado mas sim de performar e chegar até o destino. Tentem ir a cada funcionalidade colocando em prática até aquilo se tornar natural, pois eu acredito que por mais antigo que o VIM seja, ele ainda vai sobreviver e se fazer presente por muito tempo.
E antes que me julguem dizendo que no VSCode é melhor, o que já quero mostrar nesse começo que todo o conteúdo aqui exibido é a tentativa de unir o melhor dos dois mundos, uma vez que existe plugin do VS Code para que seja usado todos os comandos do vim nos seus modos de operação dentro dele. (EXEMPLO)




São ao todo 12 modos de operacao
normal mode - é o estado default do vi/vim e apesar de ser passado rapidamente por este tópico, este é certamente o que se mais usa e trabalha dentro do vim e é aqui que a mágica e os poderes acontecem.
Podemos muitas vezes deixar de reescrever textos com simples comandos e combinacoes de teclas, e é aqui que a coisa começa a ficar ainda mais interessante. O que temos aqui agora nada mais é que um artista olhando para o seu quadro em branco com a imaginação de onde se quer chegar e agora podemos refletir no vim desta forma.

## Navegação:
gg / G Inicio e fim de arquivo
xxG vai para a linha ou com :XX
0, ^, $ posicao do cursor
{ } Salta entre parágrafos
[ ] Salta entre classes
( ) Salta entre frases
[m salta entre métodos
% para saltar entre métodos --- Combinado com outros comandos (delecao)
gi para voltar ao ultimo ponto de inserção
Ctrl+o volta para a ultima linha
Ctrl+i avanca para o salto
. Repetir a ultima acao
help cursor-motions
# algumas teclas de atalho
- split window :vs :vh
-
# interpretacao de teclas

 Depois de dominado o conceito inicial de como percorrer dentro do vim, é hora de dar alguns passos adiante
algumas combinacoes de teclas, nesse momento a curva de aprendizado começa a seguir o que seria uma pequena ladeira e não mais uma serra. Digo isso pois entendendo parte do conceito que está por trás de cada ação a combinação se fará muito útil. 
Para mim depois de algum tempo passou a fazer um melhor sentido e quero agora compartilhar com vocês.
O modo normal do vim que aceita os vários comandos como saltar, deletar caractres, copiar, etc aceita conjugado algumas ações que podem ser consideradas as ordens para o vim.
Que podem ser: QUANTIDADE | AÇÃO | OBJETIVO
cit ou 5yy ou 100I (texto), etc


alguns modos e comandos
-
Registradores

o arquivo vimrc
-
crie um controle de versao do seu arquivo

meu github

