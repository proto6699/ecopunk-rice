#!/bin/bash

# waybar config
cat > ~/ecopunk-rice/waybar/config << 'EOF'
{
  "layer": "top",
  "position": "top",
  "height": 32,
  "spacing": 4,
  "modules-left": ["hyprland/workspaces", "hyprland/window"],
  "modules-center": ["clock"],
  "modules-right": ["pulseaudio", "network", "battery", "cpu", "memory"],
  "hyprland/workspaces": {
    "format": "{icon}",
    "format-icons": {
      "1": "一", "2": "二", "3": "三", "4": "四", "5": "五"
    }
  },
  "clock": {
    "format": "{:%H:%M}",
    "format-alt": "{:%A, %B %d %Y}"
  },
  "cpu": { "format": "cpu {usage}%", "tooltip": false },
  "memory": { "format": "mem {}%" },
  "battery": {
    "states": { "warning": 30, "critical": 15 },
    "format": "{capacity}% {icon}",
    "format-icons": ["▁", "▂", "▃", "▄", "▅", "▆", "▇", "█"]
  },
  "network": {
    "format-wifi": "{essid} ({signalStrength}%)",
    "format-ethernet": "eth",
    "format-disconnected": "disconnected"
  },
  "pulseaudio": {
    "format": "{volume}% {icon}",
    "format-muted": "muted",
    "format-icons": { "default": ["▁", "▄", "█"] }
  }
}
EOF

# waybar style
cat > ~/ecopunk-rice/waybar/style.css << 'EOF'
* {
  font-family: Iosevka, monospace;
  font-size: 13px;
  min-height: 0;
}

window#waybar {
  background-color: rgba(46, 52, 36, 0.85);
  border-bottom: 2px solid #A8C44C;
  color: #D4DEAF;
}

.modules-left, .modules-right, .modules-center {
  padding: 0 8px;
}

#clock {
  color: #A8C44C;
  font-weight: bold;
}

#cpu { color: #7A9A3E; }
#memory { color: #7A9A3E; }
#battery { color: #D4DEAF; }
#battery.warning { color: #C4914C; }
#battery.critical { color: #8B4A35; }
#network { color: #4A6A5A; }
#pulseaudio { color: #4A6A5A; }

#workspaces button {
  padding: 0 6px;
  color: #4A6A5A;
  background: transparent;
  border: none;
}

#workspaces button.active {
  color: #A8C44C;
  border-bottom: 2px solid #A8C44C;
}

#workspaces button:hover {
  background: rgba(168, 196, 76, 0.1);
  color: #D4DEAF;
}
EOF

# wofi config
cat > ~/ecopunk-rice/wofi/config << 'EOF'
width=520
height=400
location=center
show=drun
prompt=
filter_rate=100
allow_markup=true
no_actions=true
halign=fill
orientation=vertical
content_halign=fill
insensitive=true
allow_images=true
image_size=24
EOF

# wofi style
cat > ~/ecopunk-rice/wofi/style.css << 'EOF'
window {
  background-color: rgba(46, 52, 36, 0.85);
  border: 1px solid #4A6A5A;
  border-radius: 0px;
  font-family: Iosevka, monospace;
}

#input {
  background-color: #3D4A2E;
  color: #D4DEAF;
  border: none;
  border-bottom: 1px solid #4A6A5A;
  padding: 8px 12px;
  font-size: 14px;
}

#input:focus { border-bottom: 1px solid #A8C44C; }

#inner-box { background: transparent; }
#outer-box { padding: 8px; }
#scroll { background: transparent; }

#entry {
  padding: 6px 12px;
  color: #8A9A6B;
  border-left: 2px solid transparent;
}

#entry:selected {
  background-color: #3D4A2E;
  color: #D4DEAF;
  border-left: 2px solid #A8C44C;
}

#text { color: inherit; }
EOF

# kitty
cat > ~/ecopunk-rice/kitty/kitty.conf << 'EOF'
font_family      Iosevka
font_size        13.0
background_opacity 0.93

foreground  #D4DEAF
background  #2E3424
cursor      #A8C44C

color0  #2E3424
color1  #8B4A35
color2  #7A9A3E
color3  #C4914C
color4  #4A6A5A
color5  #6B5A8A
color6  #4A8A6A
color7  #D4DEAF
color8  #4A6A5A
color9  #A85A45
color10 #A8C44C
color11 #D4B46A
color12 #6A9A8A
color13 #8A7AAA
color14 #6AAAA0
color15 #F0EAD6

window_padding_width 12
confirm_os_window_close 0
enable_audio_bell no
EOF

# starship
cat > ~/ecopunk-rice/starship/starship.toml << 'EOF'
format = """
🌿 $directory$git_branch$git_status
$character"""

[directory]
style = "fg:#A8C44C bold"
truncation_length = 3

[git_branch]
format = "[$symbol$branch]($style) "
style = "fg:#8B4A35"
symbol = " "

[git_status]
format = '([$all_status$ahead_behind]($style) )'
style = "fg:#C4914C"

[character]
success_symbol = "[❯](fg:#7A9A3E)"
error_symbol = "[❯](fg:#8B4A35)"
EOF

# fish
cat > ~/ecopunk-rice/fish/config.fish << 'EOF'
set -g fish_greeting ""

set -gx EDITOR nvim

# colors
set -g fish_color_command A8C44C
set -g fish_color_param D4DEAF
set -g fish_color_error 8B4A35
set -g fish_color_comment 4A6A5A
set -g fish_color_quote 7A9A3E

starship init fish | source
EOF

# btop theme
cat > ~/ecopunk-rice/btop/themes/ecopunk.theme << 'EOF'
theme[main_bg]="#2E3424"
theme[main_fg]="#D4DEAF"
theme[title]="#A8C44C"
theme[hi_fg]="#A8C44C"
theme[selected_bg]="#3D4A2E"
theme[selected_fg]="#D4DEAF"
theme[inactive_fg]="#4A6A5A"
theme[graph_text]="#8A9A6B"
theme[meter_bg]="#3D4A2E"
theme[proc_misc]="#7A9A3E"
theme[cpu_box]="#4A6A5A"
theme[mem_box]="#4A6A5A"
theme[net_box]="#4A6A5A"
theme[proc_box]="#4A6A5A"
theme[div_line]="#3D4A2E"
theme[temp_start]="#7A9A3E"
theme[temp_mid]="#A8C44C"
theme[temp_end]="#8B4A35"
theme[cpu_start]="#4A6A5A"
theme[cpu_mid]="#7A9A3E"
theme[cpu_end]="#A8C44C"
theme[free_start]="#3D4A2E"
theme[free_mid]="#4A6A5A"
theme[free_end]="#7A9A3E"
theme[used_start]="#6B5A3E"
theme[used_mid]="#8B6A45"
theme[used_end]="#8B4A35"
theme[download_start]="#4A6A5A"
theme[download_mid]="#7A9A3E"
theme[download_end]="#A8C44C"
theme[upload_start]="#6B5A3E"
theme[upload_mid]="#7A9A3E"
theme[upload_end]="#A8C44C"
theme[process_start]="#4A6A5A"
theme[process_mid]="#7A9A3E"
theme[process_end]="#A8C44C"
EOF

# btop config
cat > ~/ecopunk-rice/btop/btop.conf << 'EOF'
color_theme = "ecopunk"
theme_background = True
truecolor = True
graph_symbol = "braille"
shown_boxes = "cpu mem net proc"
update_ms = 1500
proc_sorting = "cpu lazy"
proc_colors = True
proc_gradient = True
cpu_graph_upper = "total"
cpu_graph_lower = "user"
mem_graphs = True
show_swap = True
net_auto = True
net_sync = True
show_battery = True
EOF

# cava
cat > ~/ecopunk-rice/cava/config << 'EOF'
[general]
bars = 32
bar_width = 2
bar_spacing = 1
framerate = 60
sensitivity = 100
autosens = 1
lower_cutoff_freq = 50
higher_cutoff_freq = 10000

[output]
method = ncurses
channels = mono
mono_option = average
reverse = 0

[color]
gradient = 1
gradient_count = 4
gradient_color_1 = '#4A6A5A'
gradient_color_2 = '#7A9A3E'
gradient_color_3 = '#A8C44C'
gradient_color_4 = '#D4DEAF'

[smoothing]
noise_reduction = 77
monstercat = 0
waves = 0
EOF

# peaclock
cat > ~/ecopunk-rice/peaclock/config << 'EOF'
[style]
date = true
seconds = true
military = false

[color]
active-fg = "#A8C44C"
inactive-fg = "#3D4A2E"
hour = "#A8C44C"
minute = "#7A9A3E"
second = "#4A6A5A"
colon = "#D4DEAF"
date-fg = "#8A9A6B"

[symbol]
block = "█"
EOF

# neovim
cat > ~/ecopunk-rice/nvim/colors/ecopunk.lua << 'EOF'
vim.cmd("highlight clear")
vim.g.colors_name = "ecopunk"

local p = {
  bg      = "#2E3424",
  surface = "#3D4A2E",
  border  = "#4A6A5A",
  muted   = "#4A6A5A",
  fg      = "#D4DEAF",
  comment = "#8A9A6B",
  accent  = "#A8C44C",
  green   = "#7A9A3E",
  error   = "#8B4A35",
  warn    = "#C4914C",
  none    = "NONE",
}

local hi = function(g, o) vim.api.nvim_set_hl(0, g, o) end

hi("Normal",       { fg = p.fg,     bg = p.bg })
hi("NormalFloat",  { fg = p.fg,     bg = p.surface })
hi("LineNr",       { fg = p.muted })
hi("CursorLineNr", { fg = p.accent, bold = true })
hi("CursorLine",   { bg = p.surface })
hi("SignColumn",   { bg = p.bg })
hi("VertSplit",    { fg = p.border })
hi("StatusLine",   { fg = p.fg,     bg = p.surface })
hi("StatusLineNC", { fg = p.muted,  bg = p.bg })
hi("Pmenu",        { fg = p.fg,     bg = p.surface })
hi("PmenuSel",     { fg = p.bg,     bg = p.accent })
hi("Search",       { fg = p.bg,     bg = p.accent })
hi("Visual",       { bg = p.border })
hi("Comment",      { fg = p.comment, italic = true })
hi("String",       { fg = p.green })
hi("Number",       { fg = p.accent })
hi("Keyword",      { fg = p.accent, bold = true })
hi("Function",     { fg = p.fg,     bold = true })
hi("Type",         { fg = p.green })
hi("Identifier",   { fg = p.fg })
hi("Operator",     { fg = p.comment })
hi("@keyword",     { fg = p.accent, bold = true })
hi("@string",      { fg = p.green })
hi("@comment",     { fg = p.comment, italic = true })
hi("@type",        { fg = p.green })
hi("@variable",    { fg = p.fg })
EOF

# readme
cat > ~/ecopunk-rice/README.md << 'EOF'
# 🌿 ecopunk rice

> *a machine where digital systems and living ecosystems don't compete — they start collaborating*

my personal desktop rice for CachyOS + KDE Plasma on Wayland.

---

## screenshots

![the forest showing through — clean desktop, acid moss waybar](screenshots/desktop-dark.png)
*deep olive ground, the wallpaper bleeding through the chrome at 85%*

---

![organism monitor — btop + cava in kitty](screenshots/in-use.png)
*system vitals reading like a terrarium, not a dashboard. cava is the machine's heartbeat*

---

![the launcher — wofi open, waybar close-up](screenshots/bar-detail.png)
*wofi mid-search, waybar acid moss border, the forest behind the chrome*

---

![light — the same forest in flat light](screenshots/desktop-light.png)
*overcast. milky green. the moss gets more saturated when the sun disappears*

---

## the idea

this didn't start at a desk.

it started in a forest in **osaka — meiji no mori** — walking through that dense, quiet kind of green where everything feels like it's been slowly optimizing itself for centuries without asking anyone's permission.

and somewhere between the light filtering through cedar trees and the sound of everything just *existing*, it hit me how aggressively our digital lives have drifted away from anything like that. everything online feels increasingly cleaned up, stripped, optimized, and slowly enshittified into something that serves companies more than it serves people or reality.

so the idea became simple: **what if the interface didn't reject that feeling of nature — what if it absorbed it?**

not as decoration. not as wallpaper. but as structure.

---

## the tension

Y2K UI was obsessed with showing you the machine — grids, raw system data, the chrome on full display.

ecopunk borrows that honesty but asks: **what if the machine had been left outside long enough?**

the brutalist backbone stays. sharp alignment, monospace logic, system visibility. it still tells you exactly what it's doing. but the surface is pulled from living systems — moss, bark, wet stone, deep canopy shadow. the result sits somewhere between a **terminal and a terrarium**. a system left running in a forest long enough to start adapting.

---

## the design language

- colors sampled from moss, bark, wet stone, and deep canopy shadow
- greens that feel slightly too alive, like they're still growing
- muted greys that behave like concrete left under rain and soil
- occasional warm highlights that feel accidental, like sunlight slipping through leaves at the wrong angle
- waybar at 85% opacity — the chrome doesn't hide what's behind it. the forest should show through

---

## stack

|          |                               |
| -------- | ----------------------------- |
| os       | CachyOS                       |
| desktop  | KDE Plasma (Wayland)          |
| bar      | Waybar                        |
| launcher | Wofi                          |
| terminal | Kitty                         |
| shell    | Fish + Starship               |
| font     | Iosevka                       |
| icons    | Papirus-Light (green folders) |

---

## the tools

| tool     | role                                               |
| -------- | -------------------------------------------------- |
| btop     | system vitals — reads like an organism, not a grid |
| cava     | audio pulse — the machine's heartbeat made visible |
| peaclock | time — brutalist, because it should feel like it   |
| neovim   | editor — same palette, same logic, same forest     |

each one themed to the same 14 colors. nothing that opens in this environment should look like it came from somewhere else.

---

## palette

### dark — forest brutalism

| role       | color          | hex       |
| ---------- | -------------- | --------- |
| background | deep olive     | ![#2E3424](https://img.shields.io/badge/%20-2E3424?style=flat&color=2E3424) `#2E3424` |
| surface    | military olive | ![#3D4A2E](https://img.shields.io/badge/%20-3D4A2E?style=flat&color=3D4A2E) `#3D4A2E` |
| accent     | acid moss      | ![#A8C44C](https://img.shields.io/badge/%20-A8C44C?style=flat&color=A8C44C) `#A8C44C` |
| accent 2   | forest green   | ![#7A9A3E](https://img.shields.io/badge/%20-7A9A3E?style=flat&color=7A9A3E) `#7A9A3E` |
| text       | sage cream     | ![#D4DEAF](https://img.shields.io/badge/%20-D4DEAF?style=flat&color=D4DEAF) `#D4DEAF` |
| muted      | slate fern     | ![#4A6A5A](https://img.shields.io/badge/%20-4A6A5A?style=flat&color=4A6A5A) `#4A6A5A` |
| error      | rust clay      | ![#8B4A35](https://img.shields.io/badge/%20-8B4A35?style=flat&color=8B4A35) `#8B4A35` |

### light — when the forest is overcast

the light theme isn't day mode. it's the same forest in flat light —
no harsh sun, just that quiet milky-green you get when cloud cover
diffuses everything and the cedar needles go almost yellow.
parchment instead of deep olive. the accent greens stay — moss doesn't
disappear in the grey, it gets more saturated.

| role       | color      | hex       |
| ---------- | ---------- | --------- |
| background | parchment  | ![#F0EAD6](https://img.shields.io/badge/%20-F0EAD6?style=flat&color=F0EAD6) `#F0EAD6` |
| surface    | leaf wash  | ![#E8F0D8](https://img.shields.io/badge/%20-E8F0D8?style=flat&color=E8F0D8) `#E8F0D8` |
| accent     | moss green | ![#6B7A3E](https://img.shields.io/badge/%20-6B7A3E?style=flat&color=6B7A3E) `#6B7A3E` |
| accent 2   | acid pop   | ![#A8C44C](https://img.shields.io/badge/%20-A8C44C?style=flat&color=A8C44C) `#A8C44C` |
| text       | dark bark  | ![#2C3420](https://img.shields.io/badge/%20-2C3420?style=flat&color=2C3420) `#2C3420` |
| muted      | lichen     | ![#8A9A6B](https://img.shields.io/badge/%20-8A9A6B?style=flat&color=8A9A6B) `#8A9A6B` |

---

## files

---

## install

```bash
# deps
sudo pacman -S waybar wofi kitty fish starship ttf-iosevka papirus-icon-theme btop cava neovim
yay -S papirus-folders peaclock-bin

# clone
git clone https://github.com/proto6699/ecopunk-rice
cd ecopunk-rice

# core
mkdir -p ~/.config/{waybar,wofi,kitty,fish,btop/themes,cava,peaclock,nvim/colors}
cp waybar/config ~/.config/waybar/config
cp waybar/style.css ~/.config/waybar/style.css
cp wofi/config ~/.config/wofi/config
cp wofi/style.css ~/.config/wofi/style.css
cp kitty/kitty.conf ~/.config/kitty/kitty.conf
cp starship/starship.toml ~/.config/starship.toml
cp fish/config.fish ~/.config/fish/config.fish
cp btop/themes/ecopunk.theme ~/.config/btop/themes/
cp btop/btop.conf ~/.config/btop/btop.conf
cp cava/config ~/.config/cava/config
cp peaclock/config ~/.config/peaclock/config
cp nvim/colors/ecopunk.lua ~/.config/nvim/colors/ecopunk.lua

# icons
papirus-folders -C green --theme Papirus-Light
```

---

## notes

- running on a Panasonic CF-SV9 (japanese model) — enterprise hardware that has no right to look this good running Wayland
- waybar and wofi are 85% opacity so the wallpaper bleeds through the chrome. intentional. the forest should show through
- both color schemes ship — swap in System Settings whenever
- starship prompt puts 🌿 on the left and git status in bark brown

---

*built by a gremlin, themed after a mossy concrete slab 🌿*
EOF

echo "✅ all files written"
