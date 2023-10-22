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
#if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
#fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# aliases
alias py='python'
alias php='/opt/lampp/bin/php'
alias ls="lsd"
alias ruffle='/opt/ruffle'
alias clock="tty-clock -cB -C 7 -f '%m/%d/%Y'"
alias gnirehtet='~/Desktop/gnirehtet-rust-linux64/gnirehtet'
alias ytm='mpv --no-video --shuffle https://music.youtube.com/browse/VLPL5GWArklAszfgbOl3Yiw91ONfb3fTRM2b'

# exports
export EDITOR=nvim
export PATH="$PATH:/opt/flutter/bin"
export HALO_CE_PATH="/run/media/snich/Games/Halo Custom Edition/"
export HALO_CE_DATA_PATH="home/snich/Documents/My Games/Halo CE"

# java
export JAVA_HOME=/home/snich/Android/jdk-11.0.18/

# Android environment configuration
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Load daktilo
source $HOME/.cargo/env

PATH="/home/snich/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/snich/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/snich/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/snich/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/snich/perl5"; export PERL_MM_OPT;
