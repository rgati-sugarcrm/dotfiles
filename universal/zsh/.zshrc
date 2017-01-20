# Created by newuser for 5.0.7

# Setup for my custom paths
export EDITOR=vim
export VISUAL=vim
export PATH=$PATH:$HOME/bin
export GOPATH=$HOME/.go-workspace
export PATH=$PATH:$GOPATH/bin
export PATH=/opt/local/bin:$PATH
export PATH=/opt/local/sbin:$PATH
export PATH=$PATH:/Library/TeX/texbin/
export PATH=$PATH:/opt.net.cdaniels.toolchest/bin
export PATH=$PATH:/opt/net.cdaniels.toolchest/local/bin
export PATH=$PATH:$HOME/.net.cdaniels.toolchest/bin
export PATH=$PATH:$HOME/.net.cdaniels.toolchest/local/bin


if [ "$TERM" = "xterm-termite" ] ; then
  export TERM="xterm"
fi 

PS1='[%n@%M][%T][%~]
(zsh) $ '
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# use autocompletion, if supported
which acquire-toolchest-dirs | grep acquire-toolchest-dirs > /dev/null
if [ $? -eq 0 ] ; then
  $(acquire-toolchest-dirs)
  AUTOSUGGESTIONS_PATH="$NET_CDANIELS_TOOLCHEST_LOCAL/lib/zsh-autosuggestions/src"
  if [ -e "$AUTOSUGGESTIONS_PATH" ] ; then
    source "$AUTOSUGGESTIONS_PATH/zsh-autosuggestions.zsh"
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=cyan'
  fi
fi
