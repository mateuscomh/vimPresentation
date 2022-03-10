Fala pessoal tranquilo?

Vamos lá!
---
INTRO

Hoje quero apresentar pra vocês o vim e o  poder do uso de forma que ele pode 
impactar e muito na sua produtividade.

Nosso trabalho é repetitivo por natureza, incluso nesta tarefa, estamos sempre fazendo pequenas mudanças em vários lugares ou movimentar em volta de algum documento ou código e nisso repetimos várias ações e repetimos muitas teclas e cursor.
O VIM é otimizado para esta repetição, ele é eficiente em registrar ações recentes. Aqui a minha intenção é mostrar que com a interpretação do VIM em conjunto do aprendizado de comandos (e quando digo aprendizado de comandos, não é decoreba, e sim ter a memória muscular desses comandos aliado ao saber "conversar com o VIM"), a sua produtividade pode acelerar de forma muito significativa


# historia vim
-
# O que motivou essa talk?
-
# Modos de operacao vim
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

