# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

if [[ $TERM = 'xterm-kitty' ]]; then
  kitty +icat --place=9x9@5x1 ~/sylveon.png
fi
LEFT=5
SPACE=" "
echo "$bg[cyan]                   "
echo "$bg[magenta]                   "
echo "$bg[white]                   $reset_color$fg[magenta]${(pl:$LEFT::$SPACE:)} $fg[white]good meowning nya~ $fg[magenta]"
echo "$bg[magenta]                   "
echo "$bg[cyan]                   "


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias eww='~/projects/eww/target/release/eww'
alias icat="kitty +kitten icat"
export PATH=$PATH:/home/metalcupcake5/.spicetify
