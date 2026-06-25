# Load all of the config files in ~/.dotfiles/zsh that end in .zsh
for config_file (~/.dotfiles/zsh/*.zsh) source $config_file

# Load and run compinit
autoload -U compinit
compinit -i

# kubectl shell completion (contexts, resources, flags, …)
if command -v kubectl &>/dev/null; then
  source <(kubectl completion zsh)
fi

# Init nvm
if [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi
