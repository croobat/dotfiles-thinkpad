# Binary packages
path+=$HOME/.local/bin
# Rust packages
path+=$HOME/.cargo/bin
# Node packages
path+=$HOME/.npm/global/bin
# Go packages
path+=$HOME/.go/bin
# Personal scripts
path+=$HOME/.scripts
# PHP composer packages
path+=$HOME/.config/composer/vendor/bin:$PATH
# LaTeX build
path+=/usr/local/texlive/2023/bin/x86_64-linux
#path+=.
export path

export ZSH="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

# ZSH_THEME (xiong-chamiov-plus mod)
# shellcheck disable=SC1083
export PROMPT=$'%{\e[0;34m%}%B┌─[%b%{\e[0m%}%{\e[1;32m%}%n%{\e[1;30m%}@%{\e[0m%}%{\e[0;36m%}%m%{\e[0;34m%}%B]%b%{\e[0m%} - %b%{\e[0;34m%}%B[%b%{\e[1;37m%}%5~%{\e[0;34m%}%B]%b%{\e[0m%} - %{\e[0;34m%}%B[%b%{\e[0;33m%}'%D{"%H:%M"}%b$'%{\e[0;34m%}%B]%b%{\e[0m%}
%{\e[0;34m%}%B└─%B[%{\e[1;35m%}$%{\e[0;34m%}%B] <$(git_prompt_info)>%{\e[0m%}%b '
PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '

export CASE_SENSITIVE="false"
export HYPHEN_INSENSITIVE="true"
export HIST_STAMPS="yyyy-mm-dd"
export BC_ENV_ARGS=~/.config/bc/bcrc

export FZF_DEFAULT_COMMAND='fd'

export PROJECT_PATHS=(
  ~/Development/work/saeko
  ~/Development/mobile-dev
)

zstyle :omz:plugins:ssh-agent agent-forwarding yes
zstyle :omz:plugins:ssh-agent helper ksshaskpass
zstyle :omz:plugins:ssh-agent identities id_rsa id_ed25519_saeko id_ed25519_lion

export plugins=(
  adb
  aliases
  archlinux
  autojump
  bun
  colored-man-pages
  common-aliases
  composer
  dirhistory
  docker
  docker-compose
  extract
  gh
  git
  gitignore
  history
  git-flow
  isodate
  jira
  jsontools
  laravel
  npm
  pip
  pj
  react-native
  safe-paste
  sudo
  systemd
  yarn
  zsh-autosuggestions
  zsh-history-substring-search
  you-should-use
  zsh-syntax-highlighting
)

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 7

# Empty line after each command
# shellcheck disable=SC2317
precmd() {
  precmd() {
    echo
  }
}

# shellcheck disable=SC1091
source "$ZSH/oh-my-zsh.sh"

#    ╭─────────╮
#    │ Aliases │
#    ╰─────────╯
# ls
alias ls='exa --group-directories-first'
alias gls='ls --git-ignore'
alias lr='ls -R'
alias ll='ls -l'
alias la='ll -a'
alias l='la'
alias lx='ll --sort=extension'
alias lz='ll --sort=size'
alias lt='ll --sort=date'

alias bat='bat --theme=base16 --pager="less -FRX -I"'

# Permissions
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias chx='chmod --preserve-root u+x'

# Privileged access
alias reboot='sudo systemctl reboot'
alias poweroff='sudo systemctl poweroff'
alias netctl='sudo netctl'
alias nethogs='sudo nethogs'
alias updatedb='sudo updatedb --verbose'

# Pacman
alias update='sudo pacman -Syu'
alias pacinn="sudo pacman -S --needed"
alias yainn="yay -S --needed"
alias yainch="yay -S --mflags \"--skipchecksums --skippgpcheck\""

# Git
alias glgm='git log --stat'
alias glogm='git log --oneline --decorate --graph'
alias gslogm="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias glg='git log --stat --no-merges'
alias glog='git log --oneline --decorate --graph --no-merges'
alias gslog="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all --no-merges"
alias gd="git diff"
alias gdc="git diff --cached"
alias gdd="git difftool"
alias git-remove-all-branches='git branch | grep -v "master\|production\|main\|develop\|aramirez" | xargs git branch -D'
alias gctony='git config user.email "tonyramirez.business@outlook.com" && git config user.name "croobat"'
alias gclion='git config user.email "antonio.ramirez@lionintel.com" && git config user.name "Tony Ramírez"'
alias gcsaeko='git config user.email "tony@saeko.io" && git config user.name "Tony Ramírez"'
alias gstall='git stash --all --no-include-untracked'

## Modified
alias diff='colordiff'
alias grep='grep --color=auto'
alias more='less'
alias locate='plocate'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias md='mkdir -p -v'
alias nano='nano -w'
alias ping='ping -c 3'
alias dmesg='dmesg -HL'
alias less="bat -f --paging=always"
alias nsxiv="nsxiv -a -r -s f"
alias vim="nvim"
alias v="nvim"
alias vi="nvim --noplugin"
alias ssh="TERM=xterm-256color ssh"
alias speedtest="speedtest-cli --secure"
alias grep="grep -i"
alias rclone="rclone -P"
alias cbonsai="cbonsai -li -t 0.01 -w 4 -M 5 -L 50"
alias easytag="GTK_THEME=Adwaita:light easytag"
alias lf="lfrun"
alias mermaid="mmdc --theme forest"
alias gs="echo 'te confundiste carnal'"

#Abbreviated
alias t="trash"
alias firefoxserver="live-server --browser=firefox-developer-edition"
alias chromeserver="live-server --browser=google-chrome-unstable"
alias quteserver="live-server --browser=qutebrowser"
alias du1='du --max-depth=1'
alias du2='du --max-depth=2'
alias du3='du --max-depth=3'
alias o="xdg-open"
alias getdefault="xdg-mime query default"
alias setdefault="xdg-mime default"
alias gettype="xdg-mime query filetype"
alias td="topydo"
alias todo="topydo add"
alias todid="topydo do"
alias todos="topydo ls"
alias spt="ncspot"
alias sn='sncli -c $HOME/.config/sncli/snclirc'
alias bm="bashmount"
alias scim="sc-im"
alias 2048="2048 bluered"
alias nvmsource='source /usr/share/nvm/init-nvm.sh'
alias dm="dmenu_run"
alias ra="ranger"
alias maria="mariadb"
alias rust="rustc"
alias firefox="firefox-developer-edition"
alias fox="firefox-developer-edition"
alias dcp="docker cp"
alias xclipp="xclip -selection clipboard"
alias wmjava="wmname LG3D"
alias exportless="export LESS_TERMCAP_mb=$'\e[1;34m'
export LESS_TERMCAP_md=$'\e[1;3;34m'
export LESS_TERMCAP_us=$'\e[3;4;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_ue=$'\e[0m'"
alias pdf='zathura'
alias pn='pnpm'
alias pni='pnpm install'
alias pna='pnpm add'
alias pnx='pnpm dlx'
alias pnex='pnpm exec'
alias pnS='pnpm add --save-prod'
alias pnD='pnpm add --save-dev'
alias pnF='pnpm add --force'
alias pnG='pnpm add --global'
alias pnrm='pnpm uninstall'
alias pnE='PATH="$(pnpm bin)":"$PATH"'
alias pnR='pnpm run'
alias pnr='pnpm run'
alias pnrd='pnpm run dev'
alias pnrt='pnpm run test'
alias pnrsv='pnpm run serve'
alias pnrb='pnpm run build'
alias pnO='pnpm outdated'
alias pnU='pnpm update'
alias pnV='pnpm version'
alias pnL='pnpm list'
alias pnls='pnpm list'
alias pnL0='pnpm ls --depth=0'
alias pnst='pnpm start'
alias pnt='pnpm test'
alias pnP='pnpm publish'
alias pnI='pnpm init'
alias pnin='pnpm info'
alias pnSe='pnpm search'

#New
alias openports='ss --all --numeric --processes --ipv4 --ipv6'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias youtube-dl-playlist-guardar="yt-dlp -x -f bestaudio --external-downloader aria2c --external-downloader-args '-c -j 3 -x 3 -s 3 -k 1M' --ignore-errors --continue --audio-format mp3 'https://www.youtube.com/playlist?list=PLx5AzHfyfSFtPdMQc2pI0JisEDvOtAp3i'"
alias youtube-dl-playlist="yt-dlp -x -f bestaudio --external-downloader aria2c --external-downloader-args '-c -j 3 -x 3 -s 3 -k 1M' --ignore-errors --continue --no-overwrites --audio-format mp3"
alias android-mount='aft-mtp-mount ~/.mnt'
alias android-umount='fusermount -uz ~/.mnt'
alias fix-android-bar='adb shell settings put global force_fsg_nav_bar 1'
alias git-confirm-install='curl -sSfL https://cdn.rawgit.com/pimterry/git-confirm/v0.2.2/hook.sh > .git/hooks/pre-commit && chmod +x .git/hooks/pre-commit'
alias git-confirm-add='git config --add hooks.confirm.match'
alias eval-saeko='eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_ed25519_saeko'

#Multi
alias shutgrade="upgrade --combinedupgrade && sudo shutdown now"
alias bootgrade="upgrade --combinedupgrade && sudo reboot"
alias zzz="betterlockscreen --lock dim"

#Vim file
#common
alias vw="vim ~/Documents/vimwiki/index.md"
alias readme="vim README.md"
alias license="vim LICENSE"
alias pson="vim package.json"

#conf
alias paconf="vim /etc/pacman.conf"
alias apacheconf="vim /etc/httpd/conf/httpd.conf"
alias phpconf="vim /etc/php/php.ini"
alias php7conf="vim /etc/php74/php.ini"
alias php5conf="vim /etc/php56/php.ini"
alias phpmyadminconf="vim /usr/share/webapps/phpMyAdmin/config.inc.php"
alias zconf="vim ~/.zshrc"
alias piconf="vim ~/.config/picom/picom.conf"
alias alaconf="vim ~/.config/alacritty/alacritty.yml"
alias bindsconf="vim ~/.config/sxhkd/sxhkdrc"
alias qutemarks="vim ~/.config/qutebrowser/quickmarks"
alias qutequick="vim ~/.config/qutebrowser/quickmarks"
alias xinit="vim ~/.xinitrc"
alias viminit="vim ~/.config/nvim/init.lua"
alias vimplug="vim ~/.config/nvim/lua/plugins/init.lua"
alias lfconf="vim ~/.config/lf/lfrc"
alias mimeconf="vim ~/.config/mimeapps.list"

# cd
alias ..='cd ..'
alias setcurrent="/home/tony/.scripts/set-current"
alias current="cd /home/tony/Development/web-dev/react/fullstackopen"

alias down="cd ~/Downloads"
alias docs="cd ~/Documents"
alias dev="cd ~/Development"
alias mobile="cd ~/Development/mobile-dev"
alias pics="cd ~/Pictures"
alias music="cd ~/Music"
alias videos="cd ~/Videos"
alias movies="cd ~/Videos/Movies"
alias scripts="cd ~/.scripts"
alias books="cd ~/Documents/books"
alias media="cd /media"
alias mnt="cd ~/.mnt"
alias japanese="cd ~/Documents/courses/japanese"

alias desk="cd /usr/share/applications"
alias wdev="cd ~/Development/web-dev"
alias gdev="cd ~/Development/game-dev"
alias ldev="cd ~/Development/low-dev"
alias mdev="cd ~/Development/mobile-dev"
alias cvlatex="cd ~/Development/latex/resume"
alias tachi="cd ~/.local/share/Tachidesk/downloads"

# Workspace
if [[ "$DISPLAY" == ":0" ]]; then
  alias work='cd ~/Development/work/saeko'
elif [[ "$DISPLAY" == ":1" ]]; then
  alias work='cd ~/Development/work/lionintel/php'
else
  alias work='cd ~/Development/web-dev'
fi
alias wwork='cd ~/Development/work/lionintel/php'
alias wrok='echo "te confundiste carnal"'

#cd conf dir
alias conf="cd ~/.config"
alias dwconf="cd ~/.config/dwm"
alias dmconf="cd ~/.config/dmenu"
alias vimconf="cd ~/.config/nvim"
alias lvimconf="cd ~/.config/lvim"
alias quteconf="cd ~/.config/qutebrowser"
alias rangerconf="cd ~/.config/ranger"
alias packerconf="cd ~/.local/share/nvim/site/pack/packer"
alias nsxivconf="cd ~/.config/nsxiv"

## Media
#audio
alias playwav='mpv *.wav'
alias playogg='mpv *.ogg'
alias playmp3='mpv *.mp3'

# Video
alias playavi='mpv *.avi'
alias playmov='mpv *.mov'
alias playmp4='mpv *.mp4'
alias playflv='mpv *.flv'
alias playmkv='mpv *.mkv'

## Error tolerant
alias :q=' exit'
alias :Q=' exit'
alias :x=' exit'
alias cd..='cd ..'

# Grep pipe
alias findprocess='ps -Af | grep'

# Paru
alias parclean='paru -Sc'
alias parclr='paru -Scc'
alias parupg='paru -Sua'
alias parin='paru -S'
alias parre='paru -R'
alias parrem='paru -Rns'
alias parrep='paru -Si'
alias parreps='paru -Ss'
alias parloc='paru -Qi'
alias parlocs='paru -Qs'
alias parlst='paru -Qe'
alias parorph='paru -Qtd'
alias parinsd='paru -S --asdeps'
alias parmir='paru -Syy'
alias parupd="paru -Sy"
alias upgrade='paru -Syu --combinedupgrade'

#    ╭───────────╮
#    │ Functions │
#    ╰───────────╯
# Less pipes
tip() {
  curl "https://cheat.sh/$1" | less
}

pi() {
  if [[ "$1" == "" ]]; then
    ping -c 3 gnu.org
  else
    ping -c 3 "$1"
  fi
}

webjpeg() {
  if [ "$#" -lt 2 ]; then
    echo "Usage: webjpeg input_file output_file [resize_option]"
    return 1
  fi

  input_file="$1"
  output_file="$2"
  resize_option="$3"

  if [ -n "$resize_option" ]; then
    convert "$input_file" -resize "$resize_option" -sampling-factor 4:2:0 -strip -quality 80 -strip -interlace JPEG -colorspace sRGB "$output_file"
  else
    convert "$input_file" -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -strip -colorspace sRGB "$output_file"
  fi
}

webpng() {
  if [ "$#" -lt 2 ]; then
    echo "Usage: webpng input_file output_file [resize_option]"
    return 1
  fi

  input_file="$1"
  output_file="$2"
  resize_option="$3"

  if [ -n "$resize_option" ]; then
    convert "$input_file" -resize "$resize_option" -strip -quality 80 -strip "$output_file"
  else
    convert "$input_file" -strip -quality 80 -strip "$output_file"
  fi
}

websvg() {
  svgo "$1" -o "$2"
}

webjpegbatch() {
  mogrify -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -colorspace sRGB -path "$1" ./*.jpg
}

webpngbatch() {
  mogrify -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -colorspace sRGB -path "$1" ./*.png
}

what-command() {
  pacman -Qlq "$1" | grep /usr/bin/
}

dcupdf() {
  docker compose -f "$1" up -d
}

if [[ -d "/home/tony/intelephense" ]]; then
  trash /home/tony/intelephense
fi
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn


# pnpm
export PNPM_HOME="/home/tony/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
