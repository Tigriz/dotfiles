alias ls="ls --color=auto"
alias lsla="ls -lah --color=auto --group-directories-first"
alias grep="grep --color=auto"
alias mkdir="mkdir -pv"
alias vi="echo Use nvim instead of vi"
alias vim="echo Use nvim instead of vim"
alias dirsize="sudo du -sh"
alias sxiv="sxiv -a"
alias groff="groff -Tpdf -kpms"

alias weather="curl -sf wttr.in | tee ~/.local/share/weatherreport; kill -39 $(pidof dwmblocks)"
alias fullclean="make clean && rm -f config.h && git reset --hard origin/master"
alias screenshot="maim -s | xclip -selection clipboard -t image/png"
alias gitlog="git log --graph --pretty=format:'%Cred%h%Creset %Cgreen(%cd) %C(bold blue)<%an>%Creset %s-%C(yellow)%d%Creset'"
alias iiens="ssh puertas2019@perso.iiens.net"

alias reboot="sudo systemctl reboot"
alias poweroff="sudo systemctl poweroff"
alias halt="sudo systemctl halt"
alias lock="pamixer -m; slock; pamixer -u"

function torrentselect(){
  webtorrent download "$1" -s -o ~/Downloads
}
function torrentwatch(){
  webtorrent download "$1" --mpv -s "${2:-'0'}" -o ~/Downloads
}
alias ts="torrentselect"
alias tw="torrentwatch"

function spleet(){
  echo "Entering Conda Spleeter";
  conda activate spleeter;
  spleeter separate -i "$1" -p "spleeter:${2:-2}stems" -o ~/Documents/spleeter; echo "Leaving Conda Spleeter";
  conda deactivate;
}

function jsonlint() {
  cat "$1" | python -m json.tool > "$2"
}

function unzd() {
    if [[ $# != 1 ]]; then echo I need a single argument, the name of the archive to extract; return 1; fi
    target="${1%.zip}"
    unzip "$1" -d "${target##*/}"
}

alias matrixpack="matrixpack '' 'matrix-client.matrix.org'"
