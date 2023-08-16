#Alias Functions
brewski ()
{
    brew update --verbose && brew upgrade --verbose && brew cleanup --verbose && brew prune --verbose && brew cu --all --cleanup --no-brew-update --yes && brew doctor --verbose
}

git_configs ()
{
    echo "---Global Git Configuration---"
    git config --global user.name
    git config --global user.email

    echo "---Local Git Configuration---"
    git config user.name
    git config user.email 
}

#Shortcuts
alias ls='ls -G'
alias ll='ls -lahGFO'
alias diff='colordiff'
alias edit_profile='emacs ~/.bash_profile'
alias reload_profile='source ~/.bash_profile'

#Handy Tools
alias grep="grep -n --color" 
alias ping="ping -c 5" 
alias myip='curl http://ipecho.net/plain; echo'

#Common Terminal Spelling mistakes
alias cd..='cd ..'
alias sl..='ls'
alias sudo..='sudo '



