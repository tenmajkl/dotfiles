parse_git_branch()
{
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
setopt PROMPT_SUBST
export PS1=$'\e[0;32m%1~\e[0m\e[0;33m$(parse_git_branch)\e[0m%  $ ' # Yes, no template 

alias icefox="open -a icefox"
alias cord="open -a discord\ canary"

alias mhw="cd minehub/web"
alias mhn="cd minehub/web-next"
alias pa="php artisan"
alias pl="php lemonade"
alias code="nvim" # Lets troll modern dEvElOpErS Lol imagine using gui to edit text XDDDDDDDD
alias nvi="nvim"
alias ni="nvim"
alias n="nvim"
alias phs="php -S localhost:8000"
alias psh="php -a"
alias finder="open ."
# mac dock
alias dhide="defaults write com.apple.dock autohide -bool true && killall Dock"
alias dshow="defaults write com.apple.dock autohide -bool false && killall Dock"
