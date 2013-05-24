# Load all of the config files in ~/.dotfiles/zsh that end in .zsh
for config_file (~/.dotfiles/zsh/*.zsh) source $config_file

# Load and run compinit
autoload -U compinit
compinit -i
