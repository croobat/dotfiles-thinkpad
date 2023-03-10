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
#path+=.
export path

export ZSH="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

# ZSH_THEME (xiong-chamiov-plus mod)
export PROMPT=$'%{\e[0;34m%}%B┌─[%b%{\e[0m%}%{\e[1;32m%}%n%{\e[1;30m%}@%{\e[0m%}%{\e[0;36m%}%m%{\e[0;34m%}%B]%b%{\e[0m%} - %b%{\e[0;34m%}%B[%b%{\e[1;37m%}%5~%{\e[0;34m%}%B]%b%{\e[0m%} - %{\e[0;34m%}%B[%b%{\e[0;33m%}'%D{"%H:%M"}%b$'%{\e[0;34m%}%B]%b%{\e[0m%}
%{\e[0;34m%}%B└─%B[%{\e[1;35m%}$%{\e[0;34m%}%B] <$(git_prompt_info)>%{\e[0m%}%b '
PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '

export CASE_SENSITIVE="false"
export HYPHEN_INSENSITIVE="true"
export HIST_STAMPS="yyyy-mm-dd"

export plugins=(
  git
  archlinux
  docker
  docker-compose
  zsh-autosuggestions
  zsh-history-substring-search
  you-should-use
  zsh-syntax-highlighting
)

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 7

# Empty line after each command
precmd() {
  precmd() {
    echo
  }
}

source $ZSH/oh-my-zsh.sh

#    ╭─────────╮
#    │ Aliases │
#    ╰─────────╯
# ls
alias ls='exa --no-icons --group-directories-first'
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
alias pacinn="sudo pacman -S --needed"
alias yainn="yay -S --needed"
alias yainch="yay -S --mflags \"--skipchecksums --skippgpcheck\""
alias upgrade="yay -Syu --combinedupgrade"

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
alias git-remove-all-branches='git branch | grep -v "master\|main\|develop\|ARamirez" | xargs git branch -D'

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
alias vi="\vim"
alias vim="nvim"
alias hist="history | bat"
alias ssh="TERM=xterm-256color ssh"
alias speedtest="speedtest-cli --secure"
alias grep="grep -i"
alias rclone="rclone -P"
alias cbonsai="cbonsai -li -t 0.01 -w 4 -M 5 -L 50"
alias easytag="GTK_THEME=Adwaita:light easytag"

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
alias code="vscodium"
alias spt="ncspot"
alias sn='sncli -c $HOME/.config/sncli/snclirc'
alias bm="bashmount"
alias scim="sc-im"
alias 2048="2048 bluered"
alias nvmsource='source ''$NVM_DIR'/nvm.sh' ${NVM_LAZY+'--no-use'}'
alias dm="dmenu_run"
alias ra="ranger"
alias maria="mariadb"
alias rust="rustc"
alias firefox="firefox-developer-edition"
alias fox="firefox-developer-edition"
alias dcp="docker cp"

#New
alias openports='ss --all --numeric --processes --ipv4 --ipv6'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias youtube-dl-playlist-guardar="youtube-dl -x -f bestaudio --external-downloader aria2c --external-downloader-args '-c -j 3 -x 3 -s 3 -k 1M' --ignore-errors --continue --audio-format mp3 'https://www.youtube.com/playlist?list=PLjp-ryEOLdtOGhSXXc2-3VRoyK8uVUjF2'"
alias youtube-dl-playlist="youtube-dl -x -f bestaudio --external-downloader aria2c --external-downloader-args '-c -j 3 -x 3 -s 3 -k 1M' --ignore-errors --continue --no-overwrites --audio-format mp3"
alias android-mount='aft-mtp-mount ~/.mnt'
alias android-umount='fusermount -uz ~/.mnt'
alias fix-android-bar='adb shell settings put global force_fsg_nav_bar 1'

#Multi
alias shutgrade="upgrade --combinedupgrade ; sudo shutdown now"
alias bootgrade="upgrade --combinedupgrade ; sudo reboot"
alias zzz="systemctl suspend -i"

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
alias current="cd /home/tony/Development/web-dev/html/basic-portfolio"

alias down="cd ~/Downloads"
alias docs="cd ~/Documents"
alias dev="cd ~/Development"
alias pics="cd ~/Pictures"
alias music="cd ~/Music"
alias videos="cd ~/Videos"
alias movies="cd ~/Videos/Movies"
alias scripts="cd ~/.scripts"
alias books="cd ~/Documents/books"
alias media="cd /media"
alias mnt="cd ~/.mnt"

alias desk="cd /usr/share/applications"
alias wdev="cd ~/Development/web-dev"
alias gdev="cd ~/Development/game-dev"
alias ldev="cd ~/Development/low-dev"
alias cvlatex="cd ~/Development/LaTeX/curriculum-vitae"
alias work="cd ~/Development/work/lionintel/php"
alias tachi="cd ~/.local/share/Tachidesk/downloads"

#cd conf dir
alias conf="cd ~/.config"
alias dwconf="cd ~/.config/dwm"
alias dmconf="cd ~/.config/dmenu"
alias vimconf="cd ~/.config/nvim"
alias quteconf="cd ~/.config/qutebrowser"
alias rangerconf="cd ~/.config/ranger"
alias packerconf="cd ~/.local/share/nvim/site/pack/packer"
alias nsxivconf="cd ~/.config/nsxiv"

## Media
#audio
alias playwav='mpv *.wav'
alias playogg='mpv *.ogg'
alias playmp3='mpv *.mp3'

#video
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

#Grep pipe
alias findprocess='ps -Af | grep'

#    ╭───────────╮
#    │ Functions │
#    ╰───────────╯
# Less pipes
tip() {
  curl "https://cheat.sh/$1" | less
}

p() {
  if [[ "$1" == "" ]]; then
    ping -c 3 gnu.org
  else
    ping -c 3 "$1"
  fi
}

webjpeg() {
  convert "$1" -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -colorspace sRGB "$2"
}

webpng() {
  convert "$1" -strip "$2"
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

# if [[ -d "/home/tony/intelephense" ]]; then
#   trash /home/tony/intelephense
# fi
