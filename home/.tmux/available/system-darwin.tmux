
# Configure status bar
set-option -g status-bg blue
set-option -g status-fg white

#------------------------------------------------------------------------------
# Mouse support
#------------------------------------------------------------------------------
set -g mouse on
unbind-key -n WheelUpPane
bind-key   -n WheelUpPane if-shell -Ft {mouse} "#{mouse_any_flag}" \
                "send-keys -M" \
                "if-shell -Ft {mouse} '#{pane_in_mode}' 'send-keys -M' 'select-pane -t {mouse}; copy-mode -e; send-keys -M'"

unbind-key -n WheelDownPane
bind-key   -n WheelDownPane select-pane -t {mouse} \; send-keys -M

unbind-key -n MouseDrag1Pane
bind-key   -n MouseDrag1Pane if-shell -Ft {mouse} "#{mouse_any_flag}" \
                "if -Ft= '#{pane_in_mode}' 'copy-mode -M' 'send-keys -M'" \
                "copy-mode -M"

# vim: filetype=tmux
