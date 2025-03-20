if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
    figlet H i , $USER !
end

abbr -a fishrc nvim ~/.config/fish/config.fish
abbr -a hyprrc nvim ~/.config/hypr/hyprland.conf

# abbr -a google-chrome google-chrome-stable --disable-gpu-compositing
abbr -a google-chrome google-chrome-stable
# abbr -a linuxqq linuxqq --ozone-platform-hint=auto --enable-wayland-ime --disable-gpu-compositing
abbr -a linuxqq linuxqq --ozone-platform-hint=auto --enable-wayland-ime
# abbr -a code code --enable-features=UseOzonePlatform --ozone-platform=wayland 
alias yay=paru
alias vim=nvim
alias mancn="man -M /usr/share/man/zh_CN"

abbr -a windowinfo "sleep 1s && hyprctl activewindow"

export EDITOR=nvim
