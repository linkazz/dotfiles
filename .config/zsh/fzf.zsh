# ------------------------------------------------------------------
# FZF SETUP                                            
# ------------------------------------------------------------------

if [[ ! "$PATH" == */home/linuxbrew/.linuxbrew/opt/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/linuxbrew/.linuxbrew/opt/fzf/bin"
fi

# if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
#   export PATH="$PATH:/usr/local/opt/fzf/bin"
# fi

# ------------------------------------------------------------------
# AUTO-COMEPLETION
# ------------------------------------------------------------------

[[ $- == *i* ]] && source "/home/linuxbrew/.linuxbrew/opt/fzf/shell/completion.zsh" 2> /dev/null # zsh
# [[ $- == *i* ]] && source "/home/linuxbrew/.linuxbrew/opt/fzf/shell/completion.bash" 2> /dev/null # bash
# [[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null

# ------------------------------------------------------------------
# KEY BINDINGS
# ------------------------------------------------------------------

FILE="/home/ linuxbrew/.linuxbrew/opt/fzf/shell/key-bindings.zsh" # key-bindings.bash
if [[ -a $FILE ]]; then
  source $FILE
fi

# FILE="/usr/local/opt/fzf/shell/key-bindings.zsh"
# if [[ -a $FILE ]]; then
#     source $FILE
# fi

# ------------------------------------------------------------------
# FZF CONFIG 
# ------------------------------------------------------------------

export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

# Preview file content using bat (https://github.com/sharkdp/bat)
export FZF_CTRL_T_OPTS="
  --preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"

# Man path
# --------
# if [[ ! "$MANPATH" == */usr/local/opt/fzf/man* && -d "/usr/local/opt/fzf/man" ]]; then
#   export MANPATH="$MANPATH:/usr/local/opt/fzf/man"
# fi
