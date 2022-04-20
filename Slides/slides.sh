#!/usr/bin/env bash

# slideshell (2.0.0)
#
# Copyright (C) 2022 Blau Araujo <blau@debxp.org>
# License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
# This is free software: you are free to change and redistribute it.
# There is NO WARRANTY, to the extent permitted by law.

# notes -----------------------------------------------------------------------

# - implementar criação do primeiro slide caso não existam arquivos.
# - indicador de pause quando a linha de ajuda estiver oculta.
# - concluir funções.
# - tratar confirmações.
# - Documentar todas as funções.
# - criar a nova man page.

# Deletar um slide significa remover o elemento do vetor `slides' e incluí-lo
# com mesmo índice no vetor `deleted_slides'.

# options ---------------------------------------------------------------------

global_auto=0
show_pause_indicator=0
show_slide_counter=1
global_editor=vim

# if [[ -f ~/.slideshellrc ]]; then
#     . ~/.slideshellrc
# elif [[ -f ~/.config/slideshell/config ]]; then
#     . ~/.config/slideshell/config
# else
#     [[ -f /etc/slideshellrc ]] && . /etc/slideshellrc
# fi

# strings ---------------------------------------------------------------------

msg_goodbye='Thank you!'
msg_cmd='[←] prev [→] next [↑] first [↓] last%s[q] quit'
msg_nan=$'Error: this option must be a number!\nTry again... '
msg_nab=$'Error: this option requires `0\047 or `1\047!\nTry again... '
msg_cmd_not_found=$'Error: command `%s\047 not found!\nTry again... '

str_continue='continue'
str_pause='pause'

prompt_confirm='Confirm (Y/n): '
prompt_goto=$'Go to selected slide.\nEnter slide number or [C] to cancel: '
prompt_kill=$'Remove slide (only from presetation).\n[D] delete [U] undelete [C] cancel [X] apply: '
prompt_unkill=$'Restore deleted slide.\n[U] undelete [D] delete [C] cancel [X] apply: '
prompt_settings=$'Option ([C] cancel [X] apply): '
prompt_get_timeout='Timeout (sec): '
prompt_get_show_indicator='Show paused indicator (0=hide; 1=show): '
prompt_get_show_counter='Show slide counter (0=hide; 1=show): '
prompt_get_editor='Editor: '

menu_settings="Current settings

[1] Auto forward timeout : %s
[2] Show paused indicator: %s
[3] Show slide counter   : %s
[4] Editor               : %s"

# functions -------------------------------------------------------------------

# Pausa exibição automática...
pause() while :; do
    pause_message=$' [p] \e[36;1m'"$str_continue"$'\e[m\e[32m '

    get_term

    if [[ $show_cmd -eq 1 ]]; then
        tput sc
        tput cup $(($global_rows-1)) 0
        printf "\e[32m$msg_cmd\e[m" "$pause_message"
        tput rc
    fi

    read -sN1
    case ${REPLY,,} in
        p) pause_message=" [p] $str_pause "; return;;
        q) goodbye;;
    esac
done

# Menu de uso geral...
show_menu() {
    local sel menu
    global_menu_sel=$global_index
    menu=$'\n'$(printf '%s\n' "${slides[@]##*/}" | \
		    cat -n | \
		    sed -E 's/\s{3}(\s?[0-9]+)\s/\1: /')$'\n'
    tput cnorm
    while :; do
	clear
	echo "$menu"
	read -p "$1"
	if [[ $REPLY =~ ^[0-9]+$ ]]; then
	    sel=$((REPLY-1))
	    if ((sel >= 0 && sel <= global_total)); then
		global_menu_sel=$((sel-1))
		tput civis
		return
	    fi
	else
	    [[ ${REPLY,,} = 'c' ]] && break
	fi
    done
    tput civis
    reload_slide
}

# Abre o editor `nano' para edição do slide corrente...
edit_slide() {
    $global_editor ${slides[global_index]}
    reload_slide
}

# Vai para o slide selecionado em um menu...
goto_slide() {
    show_menu "$prompt_goto"
    global_index=$global_menu_sel
}

# Inclui novo slide...
add_slide() {
    :
}

# Mata o slide selecionado em um menur (apenas remove do vetor)...
kill_slide() {
    :
}

# Restura slides "mortos" pela função `kill_slide'...
unkill_slide() {
    :
}

is_number() [[ $1 =~ ^[0-9]+$ ]]
is_bool() [[ $1 == [01] ]]

# Opções da apresentação em curso...
presentation_settings() {
    local auto indicator counter editor option

    # Save current settings...
    auto=$global_auto
    indicator=$show_pause_indicator
    counter=$show_slide_counter
    editor=$global_editor
   
    tput cnorm
    while :; do
	clear
	
	printf "$menu_settings\n\n" \
	       $global_auto \
	       $show_pause_indicator \
	       $show_slide_counter \
	       "$global_editor"
	
	read -p "$prompt_settings" option

	case ${option,,} in
	    1)  # Forward timeout
		read -p "$prompt_get_timeout"
	        is_number $REPLY || { read -p "$msg_nan";  continue; }
	        global_auto=$REPLY
		;;
	    2)  # Paused indicator
		read -p "$prompt_get_show_indicator"
	        is_bool $REPLY || { read -p "$msg_nab"; continue; }
		show_pause_indicator=$REPLY
		;;
	    3)  # Slide counter
		read -p "$prompt_get_show_counter"
	        is_bool $REPLY || { read -p "$msg_nab"; continue; }
		;;
	    4)  # Editor
		read -p "$prompt_get_editor"
		command -v "${REPLY%% *}" > /dev/null || {
		    printf "$msg_cmd_not_found" "${REPLY%% *}"
		    read
		    continue
		}
		global_editor="$REPLY"
		;;
	    c)  # Restore settings and cancel
		global_auto=$auto
                show_pause_indicator=$indicator
		show_slide_counter=$counter
		global_editor="$editor"
		break
		;;
	    x)  # Apply
		break
		;;
	esac
    done
    presentation_auto
    reload_slide
    tput civis
}

# Modo de exibição automática...
presentation_auto() {
    opt_auto=''
    pause_message=' '
    if [[ $global_auto && $global_auto -gt 0 ]]; then
	opt_auto="-t$global_auto"
	pause_message=" [p] $str_pause "
    fi
}

toggle_cmd() {
    show_cmd=$((show_cmd ? 0 : 1))
    reload_slide
}

goodbye() {
    clear
    printf '%s\n\n' "$msg_goodbye"
    exit
}

# Recarrega toda a exibição do slide corrente...
reload_slide() ((global_index--))

draw_interface() {
    get_term

    if [[ $show_cmd -eq 1 ]]; then
        tput cup $(($global_rows-1)) 0
        printf "\e[32m$msg_cmd\e[m" "$pause_message"
    fi

    tput cup $((global_rows-1)) $((global_cols-5))
    printf '\e[32m%d/%d\e[m' $((global_index+1)) $global_total

    tput cup 0 0
}

get_term() {
    global_rows=$(tput lines)
    global_cols=$(tput cols)
}

# main ------------------------------------------------------------------------

# Restaura o cursor na saída...
trap 'tput cnorm' EXIT

# Define as globais...
declare -a deleted_slides

slides_dir=${1%/}
slides=($slides_dir/*)
global_total=${#slides[@]}

show_cmd=0

# Esconde o cursor...
tput civis

# Verifica e configura o modo de apresentação...
presentation_auto

# Loop principal...
for (( global_index=0; i<$global_total; global_index++)) {
    clear

    # show slide...
    md2term -f ${slides[global_index]}

    # interface control...
    draw_interface

    escape=$'\e'

    # Entrada de comandos...
    read -sN1 $opt_auto
    [[ $REPLY = $escape ]] && read -sN2

    # key commands...
    case ${REPLY,,} in

        # arrow keys...
        '[a') global_index=-1 ;;
        '[b') ((global_index=global_total-2)) ;;
        '[c'|$'\n') [[ $global_index -eq $((global_total-1)) ]] && reload_slide ;;
        '[d') [[ $((global_index-2)) -lt 0 ]] && global_index=-1 || ((global_index-=2));;

        # auto play...
        '') [[ $global_index -eq $((global_total-1)) ]] && goodbye ;;

        # single key commands...
	a) add_slide    ;;
        e) edit_slide   ;;
        g) goto_slide   ;;
        h) toggle_cmd   ;;
        k) kill_slide   ;;
        u) unkill_slide ;;
        r) reload_slide ;;
        p) pause        ;;

	# on the fly presentation options
	s) presentation_settings ;;

	# help
	'?') man slideshell; reload_slide;;
	
        # exit...
        q) goodbye ;;

        # default...
        *) reload_slide
    esac
}

