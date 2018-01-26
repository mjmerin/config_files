#Terminal Colors
export TERM="xterm-color"
PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$'


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

#Common Terminal Spelling mistakes
alias cd..='cd ..'
alias sl..='ls'
alias sudo..='sudo '



