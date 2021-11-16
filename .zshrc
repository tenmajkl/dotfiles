parse_git_branch()
{
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
setopt PROMPT_SUBST
export PS1=$'\e[0;32m%~\e[0m\e[0;33m$(parse_git_branch)\e[0m%  $ ' # Yes, no template 

EDITOR="nvim"

bindkey -v
export KEYTIMEOUT=1

# zoxide better cd 
eval "$(zoxide init zsh)"

alias browse="python3 -m webbrowser -t http://"

alias mhw="cd ~/minehub/web"
alias mhn="cd ~/minehub/web-next"
alias pa="php artisan"
alias pl="php lemonade"
alias code="nvim" # Lets troll modern dEvElOpErS Lol imagine using gui to edit text XDDDDDDDD
alias nvi="nvim"
alias ni="nvim"
alias n="nvim"
alias phs="php -S localhost:8000"
alias psh="php -a"
alias finder="open ."
alias nconf="n ~/.config/nvim/init.vim"
alias fconf="cd /Users/misa/Library/Application\ Support/Firefox/Profiles/3jkuwyv1.default-release/chrome"
alias py="python3"
# mac dock
alias dhide="defaults write com.apple.dock autohide -bool true && killall Dock"
alias dshow="defaults write com.apple.dock autohide -bool false && killall Dock"

export PATH=$PATH":$HOME/bin"
export PATH="$PATH:/Applications/VLC.app/Contents/MacOS"
export PATH="$PATH:/Users/misa/.cargo/bin"
