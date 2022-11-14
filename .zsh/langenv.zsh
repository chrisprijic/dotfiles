eval "$(rbenv init - zsh)"
eval "$(pyenv init - zsh)"
eval "$(goenv init - zsh)"
eval "$(jenv init - zsh)"

export PATH="$HOME/.jenv/bin:$PATH"

if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
