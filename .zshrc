if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; 
then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /opt/homebrew/share/antigen/antigen.zsh
source ~/.theme

autoload bashcompinit && bashcompinit
export EDITOR="nano"

antigen use oh-my-zsh
antigen bundle StackExchange/blackbox
antigen bundle brew
antigen bundle command-not-found
antigen bundle common-aliases
antigen bundle docker
antigen bundle docker-compose
antigen bundle git
antigen bundle tmux
antigen theme romkatv/powerlevel10k
antigen apply

# I use insiders, rather than stable
alias code=code-insiders

# I use my dotfiles repo to manage these things, 
# e.g. 
#
# `config pull origin master` 
# and 
# `config add -A` 
#
# like you would with GIT
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# load keychain into ssh
ssh-add --apple-load-keychain 2>/dev/null;

eval "$(rbenv init - zsh)"
eval "$(pyenv init - zsh)"
eval "$(goenv init - zsh)"
eval "$(jenv init - zsh)"

export PATH="$HOME/.jenv/bin:$PATH"

if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# let's have shorthand to print terminal colors:
alias colors='for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+"\n"}; done'
