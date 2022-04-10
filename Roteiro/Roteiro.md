SLIDE 01 \/

Fala pessoal tranquilo?


# Apresentacao

Vamos lá!
---
INTRO

SLIDE 02 \/

Hoje quero apresentar pra vocês o vim e o poder de seu uso sob um olhar de que ele possa enriquecer e impactar e muito na nossa produtividade, não só no dia a dia como também ele possa se tornar até mesmo um a softskill melhorando até a nossa interação com o hardware.

Nosso trabalho muitas vezes é repetitivo por natureza, incluso nesta tarefa, estamos sempre fazendo pequenas mudanças em vários lugares, servidores, arquivos ou até mesmo movimentar em volta de algum documento ou código e nisso usamos de vários padrões de escrita, repetimos muitas teclas e se passarmos a ter uma observação na nossa ergonomia fazemos constantemente o movimento de mãos no teclado e posteriomente no mouse.

O VIM é otimizado para esta repetição, ele é eficiente em registrar ações recentes. Aqui e nesse ponto queria muito reforçar que a minha intenção é mostrar que com a interpretação do VIM não apenas como um simples e leve editor de texto, mas sim na forma em que ele trabalha e interpreta em conjunto do aprendizado de comandos (e quando digo aprendizado de comandos, não é decoreba, e sim ter a memória muscular desses caminhos, aliados ao saber "conversar com o VIM"), a sua produtividade pode acelerar de forma muito significativa e é esse o objetivo dessa nossa talk de hoje.
Logo, meu pensamento e a semente que gostaria de deixar para vocês é de um gestor que tive uma vez de que o investimento no aprendizado será sempre um investimento em vocês mesmo. E isso se tornou latente pra mim desde então me fazendo abrir os olhos.

Antes de seguir *** Apresentacao pessoalHistorico de carreira e empresa*** .. história do sysadmin.. eu - Matheus - como usuário de computadores, por considerar o vim, talvez uma das ferramentas essenciais principalmente pro software aberto, o que a olhos de quem é fora da área pode pensar como HARDSKILL eu considero praticamente como uma SOFTSKILL e porque digo isso? Porque cada vez mais ambientado é possível sair facilmente de uma edição de texto para quase um processo de automação, por esse motivo quis muito trazer este conteúdo até vocês mesmo sabendo que existe um risco imenso dessa galera de peso aqui já saber muito mais que essa palestra e eu muito possivelmente possa chover no molhado, contudo o grande ponto chave aqui, é de fato trazermos um olhar a pequenas habilidades na nossa rotina que podem ser consideradas até mesmo empoderadoras no ponto de vista de domínio de máquina, agilidade e estes são os grandes pontos e objetivos aqui.


Historia do VIM
---
O VIM nada mais é que o acronimo de Vi Improved, há no wikipedia dizendo ser também o VI Imitation motivo da sua época de lançamento ser totalmente baseado no VI, ambos sendo, free e de código aberto e estando sob a licenca GNU GPL - General Public License.
Me permitam abrir um parenteses, mesmo este não sendo o objetivo da nossa talk de hoje, acredito sabiamente que é sempre válido termos consciencia com relação as liçencas pois diariamente esbarramos neste aspecto seja quando estamos apenas usando, copiando, compartilhando e até mesmo criando nossos códigos, essa consiciência é importante indo desde o uso pessoal em saber qual licença vamos usar para criação (o exemplo do github até sugere na criação de um repo as licenças e acho que isso não deve ser ignorado). Hoje no nosso caso o VIM sob a GPL que por sua vez tem os 4 pilares da liberdade GNU da Free Software Foundation (FSF) de software que são resumidamente: Liberdade no 0: Liberdade de executar o programa para qualquer propósito; Liberdade n1: Liberdade de estudar como o programa funciona e adptá-lo a sua necessidade; Liberdade no 2 Redistribuir cópias de modo que possa ajudar ao seu próximo; Liberdade no 3: A liberdade de aperfeiçoar e liberar essas melhorias de modo que toda comunidade beneficie deles.
Dada as regras e essa importante sinalização o VI que teve sua origem em 1976 e o VIM em 1991 ( um 30tão responsa ), naquela época existiam apenas computadores centrais, e dada a comparação de hoje principalmente com a época eram computadores muito mais lentos com pequenos Kb de memória, e o acesso a esses computadores eram através do que a gente conhece hoje como TTY (TeleTypeWriter ou Teleprinter), e em 91 Bram Moolenaar cria o VIM. Hoje ele está disponivel a todos os sistemas operacionais e uma massiva quantidade de distro já o conta como parte de sua instalação padrão, foi eleito em 2006 o mais popular entre os leitores do Linux Journal e de acordo com o stack overflow o vim era o editor de texto mais popular em uma briga direta com o EMACS.
Pra quem não conhece, cabe uma rapida intro, o VIM sendo um editor de texto e com enfase no terminal - antes chamado de "terminal burro", o foco está exclusivamente no teclado, é um editor bastante portável e leve. Tem um manual bastante rico, além de um tutorial embutido que ajuda bastante não só quem está começando como também ao pessoal que quer melhorar constantemente. Na minha opnião o VIM tem uma curva de aprendizado gigantesca e, mesmo eu com um razoável tempo de uso e até mesmo preparando esta apresentação aprendi muita coisa, contudo, mesmo sendo a primeira vista complexo, conforme a memória muscular vai incorporando algumas teclas, atalhos e até mesmo plugins o que fica no final é apenas o arrependimento de não saber de certas coisas antes.

Diferenças VIM e VI:
GUI
RegEx
SpellCheck
Diff mode
Unicode
Suporte a scripts e plugins
Syntax Highlights

Falei recentemente de portabilidade e colocando na conta, este é um de vários fatores que me motivaram nessa talk, uma vez que ele está presente nativamente em várias distribuições como disse antes, ele é extremamente leve tanto em tamanho quanto na irrelevante necessidade de poder de processamento ( logicamente sem considerar plugins e addons ). Logo quando falamos em editor de textos, temos uma infinidade e todos eles tem a funcao básica que é a de editar e salvar um texto, até mesmo o VSCode que lidamos no dia a dia faz isso de forma única, mas trazendo uma analogia ao nosso cotidiano, eu já quero trazer um exemplo que vai servir de analogia pra essa talk... você está na rua com sua mochila e uma câmera de alta definição nela, até que de repente, um belo exemplar de carro dos seus sonhos passa ao seu lado, o que vai ser mais fácil usar, seu celular que certamente está na sua mão com aquela câmera razoável, ou tirar e prepara a câmera, foco, exposição para fotografar aquele momento? Esse é o ponto, qual seria a melhor câmera? Já que o lance está no que você pode fazer ali rapidamente para atender aquele problema específico, esta seria a mesma câmera - este é o ponto, é o que você tem em mão, e quantas vezes não foi necessário analisar um log, editar um simples arquivo em um servidor ou até mesmo um container? Hoje apesar de termos uma volatilidade muito grande de dados, junto da facilidade de acesso, um editor simples e minimalista pode nos ajudar não só na edição como em vários outros aspectos. 
E assim como o VSCode o VIM conta também com muitos plugins, a comunidade do VIM é enorme e existem sites e fóruns destinados ao nosso amigo, além de tudo ainda é old school, o que por si só já é bem legal... há momentos confesso que quero testar tanto plugin que alguns ficam num limbo esperando serem usados. E nessa hora que é muito legal pensarmos na infraestrutura como código, pois o vim possui seu arquivo de configuração - que vou falar em breve sobre ele 

SLIDE 03 \/


-
# Modos de operacao VIM

Agora chega de conversa e vou tentar mostrar um pouco do que já dá pra fazer. E um novo disclaimer aqui e reforço, não quero ensinar, muito menos que decorem, quero apenas que entendam a minha mensagem do VIM com produtividade e possam tentar aplica-los para somar ao dia a dia de vocês, então sem decoreba, eu recomendo que treinem o vim até mesmo fora do trabalho para que não se torne uma experiencia frustrante já que você precisa se manter produtivo e eu acho que também tira um pouco da diversão, até mesmo porque a curva de aprendizado é grande principalmente no começo, e certamente haverá momentos que é sim melhor pegar um mouse e clicar do que tentar lembrar um miserável comando. 
Outra dica que já passo por hora é que não tentem aprender tudo de uma vez, tentem ir colocando em prática cada nova funcionalidade até que ela esteja na sua memória muscular, não tentem aprender várias coisas de uma vez. Pense nesse aprendizado como andar de bicicleta, no começo é o foco em ter o equilíbrio até chegar o ponto da autonomia de ir do ponto X ao ponto Y sem pensar em se manter equilibrado mas sim de performar e chegar até o destino. Etnão minha dica é, tentem ir a cada funcionalidade colocando em prática até aquilo se tornar natural, pois eu acredito que por mais old school que o VIM seja, ele ainda vai sobreviver e certamente vai se fazer presente por muito tempo.
E antes que me julguem dizendo que no VSCode é melhor, o que já quero mostrar nesse começo que todo o conteúdo aqui preparei pensando também nas IDEs que já estamos acostumados e que assim possamos pensar na possibilidade de unir o melhor dos dois mundos. Já que existem plugins tanto pro VSCode como outras IDEs para que seja usado todos os comandos do VIM nos seus modos de operação dentro dele.

(EXEMPLO ABRIR O PRÓPRIO VSCODE)


* apresentar a tela principal do VIM nos modos com plugins e sem plugins
(EXEMPLO DEIXAR O ITERM COM O VIM)

São ao total 12 modos de operacao, não irei passar por todos, mas vou martelar bastante sobre os mais básicos.

E antes de apresentar os modos uma coisa que muita gente já passou, inclusive eu é: como sair do VIM? existem algumas maneiras e cada uma tem um porque, serei breve:

O primeiro e principal é o modo de normal:


normal mode - é o estado default do vim/vim e através dele conseguimos nos mover entre todos os demais modos e retornamos ao modo normal sempre que apertamos ESC, este é certamente o que se mais usa e trabalha dentro do vim e é aqui que a mágica e os super poderes acontecem.
Podemos muitas vezes deixar de reescrever textos com simples comandos e combinacoes de teclas, e é aqui que a coisa começa a ficar ainda mais interessante. O que temos aqui agora nada mais é que um artista olhando para o seu quadro em branco com a imaginação de onde se quer chegar e agora podemos refletir no VIM desta forma.
Agora antes de seguir aqui no VIM, uma coisa que sempre ouvi do pessoal e até mesmo eu já passei por isso (quem nunca né) que na verdade é como sair do VIM? Então vou mostrar, existem algumas formas, nenhumas seguem um padrão de apenas sair com EXIT.


## Navegação:
(EXEMPLO ABRIR O LOREM)


h,j,k,l Importancia da navegacao 
gg / G Inicio e fim de arquivo
xxG vai para a linha ou com :XX
50% salta para meio do arquivo
0, ^, $ posicao do cursor
w/W,e/E,b/B Salta inicio e fim de palavras
{ } Salta entre parágrafos
[ ] Salta entre classes4
( ) Salta entre frases
H,M,L salta na página atual para início meio e fim
zt, zz, zb Altera a posico de tela
% para saltar entre métodos --- Combinado com outros comandos (delecao)
gi para voltar ao ultimo ponto de inserção
Ctrl+o volta para a ultima linha
Ctrl+i avanca para o salto
help cursor-motions

Agora uma passada pelo modo visual, pode muitas vezes parecer pouco interessante, mas ele tem várias funcionalidades que permitem o teclado e o cursor de Navegação de texto assumirem um papel semelhante ao mouse, neste modo  permite selecionar o texto através de linhas, colunas, edição compostas, deleções, etc.
No modo vimsual, podemos usar combinação de teclas do modo normal para realizar muitas das ações.

## visual
Tornar um texto maiusculo: Selecionar o texto ou linha e digitar U/u ou inverter o formato que está o texto com ~
vimsual line - Shift + v - Apertando O para inverter a selecao
Block vimsual - Control + v

##inserção
Modo inserção, aqui nada de diferente dos demais editores, é o modo de digitação tradicional contudo, aliado ao modo normal, comandos podem ser adiantados aqui e ajudando bastante na efetivimdade da edição do arquivo/texto


(EXEMPLO PACKAGE.JSON)


## Edição
[m salta entre métodos
J - Unir a frase na linha corrente
Regex com ^,0,$
~ Inverte o tamanho do caracter
guu/gUU muda a linha corrente para maiusculo/minusculo 
. Repetir a ultima acao
zz,zb,zt - ajustar a centralizacao que o VIM exibe
Diferença entre i/I a/A o/O 
u/U Undo e reverter as mudancas na linhas
Control+r redo
:later 30m


#comando

- split window :vs :vh
:set number
:set relative number
:-16,-10co. Copiar o trecho acima aqui 
:syntax on

-
# interpretacao de teclas

SLIDE 04 \/

 Depois de dominado o conceito inicial de como percorrer dentro do VIM, é hora de dar alguns passos adiante algumas combinacoes de teclas, nesse momento a curva de aprendizado começa a seguir o que seria uma pequena ladeira e não mais uma serra. Digo isso pois entendendo parte do conceito que está por trás de cada ação a combinação se fará muito útil. Com isso, na minha opniao, é muito importante vocês terem uma base legal no aprendizado para replicar sem dificuldades daqui por diante. Para mim o que vou falar em breve depois de algum tempo passou a fazer um melhor sentido no meu aprendizado e quero agora compartilhar com vocês.
O modo normal do VIM como mostrei  antes, aceita os vários comandos como saltar, deletar caractres, copiar, etc aceita conjugado algumas ações que podem ser consideradas as ordens para o VIM ou conversa com o VIM, e essas ordens podem ser facilmente interpretadas pela seguinte sintaxe de ordem de comando para o VIM:

QUANTIDADE | AÇÃO | OBJETIVO

EXEMPLO VIM ARQUIVO CODE.JS


Exemplo clássio que seria adicionar comentários em várias linhas de texto, como seria uma forma mais produtiva de fazer isso no VIM? Hoje eu executo da seguinte forma:

EXEMPLO Modo visual block, selecionar as linhas, Shift + i, #, ESC e voilá, o VisualCode faz isso? Claro que faz, não quero criar treta aqui, mas imaginem agilizar isso em um acesso remoto ao servidor, lembrem-se do caso da câmera e o carro na rua.

Ai agora vamos agora apenas trabalhar com a quantidade: Todos os comandos que acabamos de passar executam uma tarefa ou leva a gente para algum lugar no arquivo, logo muitas dessas podem ser quantificadas e o VIM fazer o trabalho da repetição:
Inserir 10 vezes a palavra hello world!  10 i/a hello world
Inserir 20 linhas iniciando com " - 20 o "
Copiar 5 linhas abaixo

3db Deletar 3 palavras do cursor pra tras 3db

cw Deletar uma palavra e já substituir

EXEMPLO CÓDIGO HTML

mudar dentro da tag ( cit )
mudar antes da tag ou palavra ( ct. )
apagar até = ( dt= )
di(
df. delete ao encontra .

SLIDE 04 \/

Pesquisa e substituição

R maisculo, ideal para traduzir textos voce mesmo

Control+Y para repetir a linha de cima

Pesquisa rápida em arquivo com / (podendo usar o :HLsearch) n/N


EXEMPLO NXGIX.Log
:g/HEAD/d   apagar as linhas com HEAD
-pegar apenas o IP
:normal WhD 
-organizar
:sort 
-repetidos
modo visual
:!uniq -c
modo visual
!sort -n


:s/a/A altera a primeira instancia e substitui
:%s/todas/TODAS/g mostrar tambem gc controly control+e
:s/\<apenas\>/APENAS/gi
:29,35 s/palavra/PALAVRA/gi
:! comando para executar sem sair do vim

:0 read arquivo (usar o ls para demonstrar)
:r! ls (mostrar os exemplos de grep apenas diretorios)

## Macros

Marcas
ma,mb,mc,mw
Saltar entre marcadores
'a,'b,'c

Registradores
:reg exibe o historico de edicoes 
"3p registrador 3 paste

Arquivo JSON exemplo

Mostrar incrementos com Macros
Simular o mesmo arquivo para transformar em JSON
{ “id”: 1, “name”: “fruta” },



# o arquivo VIM

O VIM como qualquer outra aplicação possui seu arquivo de configuração e nesse caso ele por padrão encontra-se em ~/.vimrc. Caso esse arquivo não exista, basta criá-lo que o vim vai fazer a leitura.
Nesse arquivo é possível de deixar todas as configurações pessoais, bem como, atalhos, redefinições e também plugins que são muito úteis. No meu caso está até mesmo o tema e esquema de cores nesse arquivo.

EXEMPLO Abrir o VIM.rc

Uma coisa interessante a fazermos, ou que pelos eu mesmo faço e acredito ser super válido, que é nada mais que versionar esse arquivo .vimrc, assim na a possibilidade de "morar" durante um tempo em algum servidor ou precisar trocar de máquina está lá tudo do jeitinho que eu sempre gosto de manter. Falando em versionando no caso dessa talk e o processo meu de brainstorm no meu github, vou compartilhar no chat o link e se você não tem amigos por lá, eu posso ser um bom amigo e sinta-se a vontade para me adicionar por lá para que possamos formar também uma rede forte e com boas ideias de cada projeto. 

SLIDE REFERENCIAL TEORICO \/

Inclusive nesse slide estão os referenciais que busquei e me ajudaram a construir e também aprender muita coisa antes de passar pra vocês e está lá também no github, mas se quiserem eu posso mandar os links pra voces.

E minha mensagem final

ULTIMO SLIDE

Um agradecimento pela oportunidade de falar aqui e vencer a timidez, Agradecimentos...

