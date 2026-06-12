# Lines configured by zsh-newuser-install
HISTFILE=~/.zshist
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/aksh/.zshrc'

autoload -Uz compinit
compinit
source ~/Documents/git_temp/powerlevel10k/powerlevel10k.zsh-theme

# source antidote
source /home/aksh/.git_temp/.antidote/antidote.zsh

# initialize plugins statically with ${ZDOTDIR:-$HOME}/.zsh_plugins.txt
antidote load

# Aliases
alias lg='lazygit'
alias ig='instagram-cli'
alias la='ls -a'
alias ll='ls -l'
alias l='ls -al'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Fastfetch will only execute when outside of TMUX
if [[ "$TERM_PROGRAM" != "tmux" ]]; then
	fastfetch
fi

# Set up fzf key bindings and fuzzy completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Set global defaults matching your exact style preference
export FZF_DEFAULT_OPTS="
  --style=full
  --preview='fzf-preview.sh {}'
  --bind='focus:transform-header:file --brief {}'
"

# Apply specifically to Ctrl+T (File finder) to prevent breaking history lookups
export FZF_CTRL_T_OPTS="
  --style=full
  --preview='fzf-preview.sh {}'
  --bind='focus:transform-header:file --brief {}'
"

# Routing the man pages to neovim
export MANPAGER='nvim +Man!'
