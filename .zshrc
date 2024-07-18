eval "$(oh-my-posh init zsh --config $HOME/.zsh/ohmyposh/zen.toml)"

# I use my dotfiles repo to manage these things,
# e.g.
#
# `config pull origin master`
# and
# `config add -A`
#
# like you would with GIT
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

[[ -f ~/.zsh/env.zsh ]] && source ~/.zsh/env.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
[[ -f ~/.zsh/comp.zsh ]] && source ~/.zsh/comp.zsh
