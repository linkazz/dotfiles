export EDITOR="nvim"
# But still use emacs-style zsh bindings
# http://superuser.com/questions/403355/how-do-i-get-searching-through-my-command-history-working-with-tmux-and-zshell
bindkey -e

# splinks aliases
alias xr='explorer.exe'
alias cat='bat'
alias xrsm='exercism'
alias cpl='cp -t /h/WSL-Images/dotfiles/ -rv'
# alias lg='lazygit'
alias dotwsl='cd /h/WSL-Images/dotfiles && ls -al'
alias ls='exa -al --sort=name --icons --group-directories-first'
alias lsx='exa -ax --icons --group-directories-first'
alias lst='exa -at --icons --group-directories-first'
alias szsh='source ~/.zshrc'
alias econf='nvim ~/.zshrc'
alias myconf='cd ~/.config && ls'
alias cat='bat'
alias lsn='exa -aG --icons --group-directories-first --sort=name'
alias cpl='cp -t /mnt/h/WSL-Images/dotfiles/ -rv' # backup to external folder
alias updg='sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'
alias gdiff='git --no-pager diff --no-index'
alias xr='explorer.exe'

alias d="docker"
alias dc="docker-compose"

alias vi="nvim"
alias vim="nvim"
alias aedit=" $EDITOR $ZSH_CONFIG/aliases.zsh; source $ZSH_CONFIG/aliases.zsh"
alias eedit=" $EDITOR $ZSH_CONFIG/environment.zsh; source $ZSH_CONFIG/environment.zsh"
# alias pedit=" $EDITOR $ZSH_CONFIG/private.zsh; source $ZSH_CONFIG/private.zsh"
# alias viedit=" $EDITOR $HOME/.vim/vimrc"

# N-Triples aliases from http://blog.datagraph.org/2010/03/grepping-ntriples
alias rdf-count="awk '/^\s*[^#]/ { n += 1 } END { print n }'"
alias rdf-lengths="awk '/^\s*[^#]/ { print length }'"
alias rdf-length-avg="awk '/^\s*[^#]/ { n += 1; s += length } END { print s/n }'"
alias rdf-length-max="awk 'BEGIN { n=0 } /^\s*[^#]/ { if (length>n) n=length } END { print n }'"
alias rdf-length-min="awk 'BEGIN { n=1e9 } /^\s*[^#]/ { if (length>0 && length<n) n=length } END { print (n<1e9 ? n : 0) }'"
alias rdf-subjects="awk '/^\s*[^#]/ { print \$1 }' | uniq"
alias rdf-predicates="awk '/^\s*[^#]/ { print \$2 }' | uniq"
alias rdf-objects="awk '/^\s*[^#]/ { ORS=\"\"; for (i=3;i<=NF-1;i++) print \$i \" \"; print \"\n\" }' | uniq"
alias rdf-datatypes="awk -F'\x5E' '/\"\^\^</ { print substr(\$3, 2, length(\$3)-4) }' | uniq"

#alias man="unset PAGER; man"
alias grep='grep --color=auto'

alias sign='gpg --detach-sign --armor'

alias SimpleServer='open http://localhost:8000; python -m SimpleHTTPServer'

##### standard aliases (start with a space to be ignored in history)
# alias ls=' exa --group-directories-first --icons'
alias v="clear; exa --git -h -l --group-directories-first --time-style long-iso --color automatic"

alias p=' ps aux | grep'
alias g='git'
alias b='brew'
alias ka="killall"

alias cd=' cd'
alias ..=' cd ..; ls'
alias ...=' cd ..; cd ..; ls'
alias ....=' cd ..; cd ..; cd ..; ls'
alias cd..='..'
alias cd...='...'
alias cd....='....'

alias k9='kill -9'

##### global aliases
# zsh buch s.82 (z.B. find / ... NE)
alias -g NE='2>|/dev/null'
alias -g NO='&>|/dev/null'
alias -g EO='>|/dev/null'

# http://rayninfo.co.uk/tips/zshtips.html
alias -g G='| grep '
alias -g P='2>&1 | $PAGER'
alias -g L='| less'
alias -g LA='2>&1 | less'
alias -g M='| most'
alias -g C='| wc -l'

# http://www.commandlinefu.com/commands/view/7284/zsh-suffix-to-inform-you-about-long-command-ending
# zsh suffix to inform you about long command ending make, Just add "R" (without quotes) suffix to it and you can do other things: 
# zsh will inform you when you can see the results.
#alias -g R=' &; jobs | tail -1 | read A0 A1 A2 cmd; echo "running $cmd"; fg "$cmd"; zenity --info --text "$cmd done"; unset A0 A1 A2 cmd'

##### suffix aliases (mostly mapped to open which runs the gnome/kde default app)

alias -s Dockerfile="docker build - < "

alias ocr='docker run --rm -v `pwd`:/home/docker jbarlow83/ocrmypdf --skip-text'
alias -s tex='docker run -i -t --rm -v `pwd`:/data docker-registry.eccenca.com/eccenca-latex:v1.10.0 rubber --inplace --maxerr -1 --short --force --warn all --pdf'

