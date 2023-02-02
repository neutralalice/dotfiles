export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_DESKTOP=sway
export XDG_CONFIG_HOME="$HOME/.config"
export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1 # java on wayland
export QT_QPA_PLATFORM=wayland 
export MOZ_ENABLE_WAYLAND=1 # force mozilla to use wayland instead of xorg-wayland
export EDITOR="nvim"
export NNN_BMS="d:$HOME/documents/;h:$HOME;D:$HOME/downloads"
export NNN_SSHFS="sshfs -o follow_symlinks"        # make sshfs follow symlinks on the remote
export NNN_COLORS="2136"                           # use a different color for each context
export NNN_TRASH="0"                                 # trash (needs trash-cli) instead of delete
export NNN_PLUG='f:finder;o:fzopen;p:mocq;d:diffs;t:nmount;v:imgview'



typeset -U path PATH # zsh will source $ZDOTDIR/.zshenv twice without the unique typeset
path+=("$HOME/git/scripts")
export PATH
