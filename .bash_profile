
# ignore 5 CTRL-Ds until it ends the session
# useful if you're in an SSH session and spamming this
# avoids accidentally closing the session
export IGNOREEOF=5

# My bash prompt (PS1) with git support
# Requires .git-prompt.sh to work
if [ -f ~/.git-prompt.sh ]; then
        source ~/.git-prompt.sh
        export GIT_PS1_SHOWDIRTYSTATE="true"
        export GIT_PS1_SHOWCOLORHINTS="true"
        export GIT_PS1_SHOWUPSTREAM="auto"
        PROMPT_COMMAND='__git_ps1 "\[\e[0;36m\]┌─[\[\e[0;33m\]\@\[\e[0;36m\]]─[\[\e[0;33m\]\u\[\e[0;36m\]]─[\[\e[0;33m\]\h\[\e[0;36m\]]─[\[\e[0;33m\]\w\[\e[0;36m\]]" "\[\e[0;36m\]\n└─[\[\e[0;33m\]\$\[\e[0;36m\]]─>\[\e[0m\] "'
fi

