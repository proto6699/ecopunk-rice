set -g fish_greeting ""

set -gx EDITOR nvim

# colors
set -g fish_color_command A8C44C
set -g fish_color_param D4DEAF
set -g fish_color_error 8B4A35
set -g fish_color_comment 4A6A5A
set -g fish_color_quote 7A9A3E

starship init fish | source
