parse_git_branch()
{
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
setopt PROMPT_SUBST
export PS1=$'\e[0;32m%1~\e[0m\e[0;33m$(parse_git_branch)\e[0m%  $ '

