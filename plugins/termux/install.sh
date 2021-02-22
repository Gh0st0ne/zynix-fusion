pkg update
pkg install ruby srm im nano nmap zsh sh -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "alias ls='ls -lh'\nalias rm='srm -drf'\nalias cls='clear'" > .zshrc
   
