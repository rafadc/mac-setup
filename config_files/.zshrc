# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
if [ -n "$INSIDE_EMACS" ]; then
    [[ $EMACS = t ]] && unsetopt zle
    ZSH_THEME="miloshadzic"
    export TERM=eterm-color
else
    ZSH_THEME="avit"
    export TERM=xterm-256color
fi

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rails git ruby heroku osx brew battery)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
[[ -s "/Users/rafael/.rvm/scripts/rvm" ]] && source "/Users/rafael/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

unsetopt sharehistory

fpath=(/usr/local/share/zsh-completions $fpath)

export PATH=$PATH:/usr/local/share/npm/bin:$HOME/bin/tmux-scripts
export PATH=$PATH:$HOME/bin:$HOME/bin/tmux-scripts

export EDITOR=atom

alias rvm="nocorrect rvm"
alias be="bundle exec"

alias e='emacsclient --no-wait -c'
alias emacskill='emacsclient -e "(kill-emacs)"'

alias g="git status"
alias gstandup="git log --since yesterday --author `git config user.email` --pretty=short"
alias gpll="git pull"
alias gpsh="git push"
alias ga="git add"
alias gc="git commit"
alias gac="git add -A . && git commit"
alias gdiff="git diff"
alias gundo="git reset --soft 'HEAD^'"

alias ltest="lein test"

alias ls='gls --color'

alias l="ls -la"
alias rm="rmtrash"

alias brewfullupdate="brew update && brew cask update && brew upgrade && brew cleanup && brew cask cleanup"

alias serve="ruby -run -e httpd . -p 9090"

alias dl='docker ps -l -q'

export GROOVY_HOME="/usr/local/Cellar/groovy/2.1.1/libexec"
export NODE_MODULES="/usr/local/lib/node_modules"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/rafael/.gvm/bin/gvm-init.sh" ]] && source "/Users/rafael/.gvm/bin/gvm-init.sh"
