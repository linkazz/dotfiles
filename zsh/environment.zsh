# ------------------------------------------------------------------------------
# GENERAL 
# ------------------------------------------------------------------------------

# locales
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# better time & date format
export TIMEFMT=$'\n================\nCPU\t%P\nuser\t%*U\nsystem\t%*S\ntotal\t%*E'
export DATE=$(date +%Y-%m-%d)

export COLORTERM=truecolor
export CLICOLOR=1

# Do not override files using `>`, but it's still possible using `>!`
# set -o noclobber

# ------------------------------------------------------------------------------
# ZSH AND LOCAL PATHS
# ------------------------------------------------------------------------------

# XDG Base Directory Specification
# http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export ZSH_CONFIG="$XDG_CONFIG_HOME/zsh"
export ZSH_CACHE="$XDG_CACHE_HOME/zsh"
mkdir -p $ZSH_CACHE

# executable search path
export PATH=/usr/local/sbin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/sbin:$PATH
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit}'):0 # allow GUI apps running in the Ubuntu on the Windows host

export PATH_DIR="/usr/local/bin"
mkdir -p $PATH_DIR

# ------------------------------------------------------------------------------
# FOLDER ENV VARIABLES 
# ------------------------------------------------------------------------------
if [ -d $HOME/.cargo ]; then
  export CARGO_HOME="$CARGO_HOME:$HOME/.cargo" 
fi

if [ -d $HOME/.rustup ]; then
  export RUST_HOME="$RUST_HOME:$HOME/.rustup" 
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion

# Extend $NODE_PATH
# if [ -d ~/.npm-global ]; then
#   export NODE_PATH="$NODE_PATH:$HOME/.npm-global/lib/node_modules"
# fi

# export PATH="$PATH:/home/splinks/.local/bin" # pipx creation

# https://github.com/mxcl/homebrew/issues/11182
# Extend $PATH without duplicates
_extend_path() {
  [[ -d "$1" ]] || return

  if ! $( echo "$PATH" | tr ":" "\n" | grep -qx "$1" ) ; then
    export PATH="$1:$PATH"
  fi
}

# Default editor for local and remote sessions
if [[ -n "$SSH_CONNECTION" ]]; then
  # on the server
  if [ command -v vim >/dev/null 2>&1 ]; then
    export EDITOR='nvim'
  else
    export EDITOR='vi'
  fi
else
  export EDITOR='nvim'
fi

# ------------------------------------------------------------------------------
# SHELLS ENV 
# ------------------------------------------------------------------------------
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" # homebrew

# starship prompt
export STARSHIP_CONFIG=${STARSHIP_CONFIG:="$HOME/.config/starship/starship.toml"}
eval "$(starship init zsh)" 

# eval "$(register-python-argcomplete)"

# ------------------------------------------------------------------------------
# SCRAPED ENVIRONMENT CONFIGS
# ------------------------------------------------------------------------------

# Add custom bin to $PATH
# _extend_path "$HOME/.local/bin"
# _extend_path "$DOTFILES/bin"
# _extend_path "/snap/bin/"
# _extend_path "$HOME/.npm-global/bin"
# _extend_path "$HOME/.rvm/bin"
# _extend_path "$HOME/.yarn/bin"
# _extend_path "$HOME/.config/yarn/global/node_modules/.bin"

# export PYTHONPATH=/usr/local/lib/python2.7/site-pac
# . "$HOME/.cargo/env"

# Default pager
# export PAGER='less'

# less options
# less_opts=(
  # Quit if entire file fits on first screen.
  # -FX
  # Ignore case in searches that do not contain uppercase.
  # --ignore-case
  # Allow ANSI colour escapes, but no other escapes.
  # --RAW-CONTROL-CHARS
  # Quiet the terminal bell. (when trying to scroll past the end of the buffer)
  # --quiet
  # Do not complain when we are on a dumb terminal.
  # --dumb
# )
# export LESS="${less_opts[*]}"
# Sourcing all zsh files from $DOTFILES/custom

# custom_files=($(find $DOTFILES/custom -type f -name "*.zsh"))
# if [[ "${#custom_files[@]}" -gt 0 ]]; then
  # for file in "${custom_files[@]}"; do
    # source "$file"
  # done
# fi
# ------------------------------------------------------------------------------
