# Comandos e teclas essenciais do Vim

## Modos

| MODO                      | ATIVAÇÃO | DESCRIÇÃO                                                      |
|---------------------------|----------|----------------------------------------------------------------|
| NORMAL                    | `ESC`      | O modo inicial do Vim                                          |
| NORMAL (temporário)       | `Ctrl+o`      | Iniciado a partir do modo INSERT para a execução de um comando |
| INSERT                    | `i`        | Inicia a inserção de texto na posição do cursor                |
| INSERT (append)           | `a`        | Inicia a inserção do texto após o cursor                       |
| INSERT (outra linha)      | `o`        | Inicia a inserção de texto em nova linha abaixo                |
| INSERT (início)           | `I`        | Inicia a inserção de texto no início da linha                  |
| INSERT (fim)              | `A`        | Inicia a inserção de texto no fim da linha                     |
| INSERT (outra linha aqui) | `O`        | Move linha atual para baixo e inicia a inserção de texto       |
| VISUAL                    | `v`        | Inicia o modo de seleção de texto                              |
| VISUAL (por linhas)       | `V`        | Inicia o modo de seleção de linhas inteiras                    |
| VISUAL (retangular)       | `Ctrl+v`      | Inicia o modeo de seleção retangular                           |
| COMMAND                   | `ESC` `:`    | Inicia a entrada de comandos                                   |
| COMMAND (temporário)      | `Ctrl+o` `:`    | A partir do modo INSERT, inicia a entrada de apenas um comando |

## Movimentação

| DIREÇÃO                     | NORMAL | INSERT | VISUAL |
|-----------------------------|--------|--------|--------|
| Caractere anterior          | `h`      | `Ctrl+o` `h`  | `h`      |
| Próximo caractere           | `l`      | `Ctrl+o` `l`  | `l`      |
| Linha acima                 | `k`      | `Ctrl+o` `k`  | `k`      |
| Linha abaixo                | `j`      | `Ctrl+o` `j`  | `j`      |
| Primeira linha do arquivo   | `gg`     | `Ctrl+o` `gg` | `gg`     |
| Última linha do arquivo     | `G`      | `Ctrl+o` `G`  | `G`      |
| Início da linha             | `0`      | `Ctrl+o` `0`  | `0`      |
| Fim da linha                | `$`      | `Ctrl+o` `$`  | `$`      |
| Início da próxima palavra   | `w`      | `Ctrl+o` `w`  | `w`      |
| Fim da palavra              | `e`      | `Ctrl+o` `e` | `e`      |
| Início da palavra anterior  | `b`      | `Ctrl+o` `b` | `b`      |
| Início da frase             | `(`      | `Ctrl+o` `(` | `(`      |
| Fim da frase                | `)`      | `Ctrl+o` `)` | `)`      |
| Início do parágrafo         | `{`      | `Ctrl+o` `{` | `{`      |
| Fim do parágrafo            | `}`      | `Ctrl+o` `}` | `}`      |
| Centraliza página no cursor | `zz`     | `Ctrl+o` `zz` | `zz`     |

* Todas as direções acima (menos `gg`) podem ser antecedidas de um número representando uma quantidade de repetições. Por exemplo:

```
C-o 5l → Move o cursor 5 caracteres à direita no modo INSERT.
```

* A tecla `G` antecedida de um número vai para a linha de número correspondente:

```
15G → Vai para a linha de número 15 no modo NORMAL
```

## Seleção de texto

* No modo VISUAL iniciado com `v`, o cursor é movido selecionando o texto.
* No modo VISUAL iniciado com `V`, a movimentação dentro da linha não faz sentido.
* A regra das quantidades antes das direções também valem para a seleção (após `v` ou `V`).
* Todas as teclas abaixo estão indicadas a partir do modo NORMAL (`ESC` ou `C-o`).

| TECLAS | RESULTADO                                                                                     |
|--------|-----------------------------------------------------------------------------------------------|
| `vw`     | Seleciona do cursor ao fim da plavra atual ou da próxima palavra se estiver em um espaço      |
| `vb`     | Seleciona do cursor ao início da palavra atual ou da palavra anterior se estiver em um espaço |
| `viw`    | Seleciona a palavra atual                                                                     |
| `ggVG`   | Seleciona todo o texto                                                                        |

## Desfazer e refazer

* Todas as teclas abaixo estão indicadas a partir do modo NORMAL (`ESC` ou `C-o`).

| TECLAS | RESULTADO                      |
|--------|--------------------------------|
| `u`      | Desfaz a última ação           |
| N `u`     | Desfaz as N últimas ações      |
| `U`      | Desfaz todas as ações na linha |
| `Ctrl+r` | Refazer                        |

## Copiar (*yank*), recortar (*delete*) e colar (*put*)

* Todas as teclas abaixo estão indicadas a partir do modo NORMAL (`ESC` ou `C-o`).
* No modo VISUAL, a cópia da seleção é feita com a tecla `y`.
* No modo VISUAL, recorta-se com a tecla `d`.

| COPIAR | RESULTADO                                                                             |
|--------|---------------------------------------------------------------------------------------|
| `yy`     | Copia a linha                                                                         |
| N `yy`    | Copia N linhas a partir da atual (inclusive)                                          |
| `y$`     | Copia do cursor ao fim da linha                                                       |
| `y0`     | Copia do cursor ao início da linha                                                    |
| `yw`     | Copia do cursor ao fim da palavra (ou da palavra anterior se estiver em um espaço)    |
| `yb`     | Copia do cursor ao início da palavra (ou da palavra anterior se estiver em um espaço) |
| `yiw`    | Copia a palavra sob o cursor                                                          |

* A tecla `y` pode ser seguida de todas as direções antecedidas ou não de quantidades.

| RECORTAR | RESULTADO                                                                               |
|----------|-----------------------------------------------------------------------------------------|
| `dd`       | Recorta a linha                                                                         |
| N `dd`      | Recorta N linhas a partir da atual (inclusive)                                          |
| `d$`       | Recorta do cursor ao fim da linha                                                       |
| `d0`       | Recorta do cursor ao início da linha                                                    |
| `dw`       | Recorta do cursor ao fim da palavra (ou da palavra anterior se estiver em um espaço)    |
| `db`       | Recorta do cursor ao início da palavra (ou da palavra anterior se estiver em um espaço) |
| `diw`      | Recorta a palavra sob o cursor                                                          |

* A tecla `d` pode ser seguida de todas as direções anteceditas ou não de quantidades.

| COLAR | RESULTADO            |
|-------|----------------------|
| `p`     | Cola após o cursor   |
| `P`     | Cola antes do cursor |

* As teclas `p` e `P` podem ser antecedidas de quantidades.

## Modo COMMAND

* É o modo de execução de comandos interativos na última linha do Vim.
* Alguns comandos úteis:

| COMANDO                    | AÇÃO                                  |
|----------------------------|---------------------------------------|
| `ESC` `:q`                     | Sair                                  |
| `ESC` `:q!`                    | Sair sem salvar                       |
| `ESC` `:w`                     | Salvar                                |
| `ESC` `:w` `ARQUIVO`             | Salvar como...                        |
| `ESC` `:wq`                    | Salvar e sair                         |
| `ESC` `:x`                     | Salvar e sair                         |
| `ESC` `:w` `!sudo tee %`         | Salvar como 'sudo'                    |
| `ESC` `:set` `number!`           | Alternar numeração de linha           |
| `ESC` `:set` `relativenumber!`    | Alternar numeração relativa de linhas |
| `ESC` `:set` `colorscheme` `[TAB]` | Alterar o tema                        |
| `ESC` `:set` `syntax` `on`/`off`     | Alternar coloração de sintaxe         |

* Outra forma de sair (no modo NORMAL): `Q` `q` `[ENTER]`
* Outra forma rápida de salvar e sair (no modo NORMAL): `ZZ` (mesmo que `:wq`)
* Outra forma rápida de sair sem salvar (no modo NORMAL): `ZQ` (mesmo que `:q!`)

