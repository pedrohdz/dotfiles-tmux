
# Configure status bar
set-option -g status-bg blue
set-option -g status-fg white

bind-key -t vi-copy y copy-pipe "pbcopy"

#------------------------------------------------------------------------------
# Mouse support
#------------------------------------------------------------------------------
set -g mouse on

bind-key -t emacs-copy MouseDragEnd1Pane copy-pipe "pbcopy"
bind-key -t vi-copy MouseDragEnd1Pane copy-pipe "pbcopy"

# vim: filetype=tmux
