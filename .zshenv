# BEGIN XDG Base Directory
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
# END XDG Base Directory
# XDG PLEASE ( THESE DONT LISTEN)
export CARGO_HOME="$XG_DATA_HOME/cargo"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GOPATH="$XDG_DATA_HOME/go"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java # some applications don't seem to respect this, try another?
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
#
export XDG_CURRENT_DESKTOP="sway"
export XDG_SESSION_DESKTOP="sway"
export SDL_VIDEODRIVER="wayland"
export _JAVA_AWT_WM_NONREPARENTING=1 # java on wayland
export QT_QPA_PLATFORM="wayland"
export MOZ_ENABLE_WAYLAND=1 # force mozilla to use wayland instead of xorg-wayland
export EDITOR="nvim"
export NNN_BMS="d:$HOME/documents/;h:$HOME;D:$HOME/downloads"
export NNN_SSHFS="sshfs -o follow_symlinks"        # make sshfs follow symlinks on the remote
export NNN_COLORS="2136"                           # use a different color for each context
export NNN_TRASH="0"                                 # trash (needs trash-cli) instead of delete
export NNN_PLUG="f:finder;o:fzopen;p:mocq;d:diffs;t:nmount;v:imgview;l:preview-tui"
export NNN_FIFO=/tmp/nnn.fifo
# BEGIN ZSH setup
export ZDOTDIR="$HOME/.config/zsh" # move zsh dotfiles out of home
export HISTFILE="$XDG_STATE_HOME/zsh/history"
# END ZSH setup
# BEGIN PATH setup
typeset -U path PATH # zsh will source $ZDOTDIR/.zshenv twice without the unique typeset
path+=("$HOME/.local/bin")
export PATH
# End PATH setup
