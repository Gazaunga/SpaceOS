git config --global user.name "Gazaunga"
git config --global user.email "jeremy.ottley@gmail.com"
git config --global core.autocrlf input
git config --global core.safecrlf true
cd ~
wget https://raw.githubusercontent.com/Gazaunga/ui3/master/.zshrc
mkdir zsh
cd zsh
wget https://raw.githubusercontent.com/Gazaunga/ui3/master/zsh/minimal.zsh
cd ~
wget -O ruby-install-0.6.1.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.1.tar.gz
tar -xzvf ruby-install-0.6.1.tar.gz
cd ruby-install-0.6.1/
sudo make install
cd ~
ruby-install --latest ruby
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
pacaur -Syu --noconfirm stumpwm-git virtualbox-guest-
pacaur -Syu --noconfirm --noedit xorg-xinit xorg-server emacs adobe-source-code-pro-fonts \
  adobe-source-sans-pro-fonts \
  adobe-source-serif-pro-fonts \
  otf-texgyre \
  ttf-chromeos-fonts \
  ttf-clear-sans \
  ttf-liberation \
  ttf-linux-libertine \
  ttf-noto \
  ttf-roboto \
  font-bh-ttf \
  ttf-hack \
  ttf-iosevka \
  ttf-font-awesome \
  adobe-source-han-sans-fonts \
  ttf-mac-fonts \
  ttf-symbola \
  ttf-google-fonts-git \
  zathura \
  zathura-pdf-mupdf \
  zathura-ps \
  zathura-djvu \
  zathura-cb \
  #stumpwm-git \
  pandoc \
  ruby-devel \
  qutebrowser-git \
  mpv \
  dunst \
  interrobang-git \
  glances \
  rainbowstream \
  trash-cli \
  newsbeuter \
  cylon \
  rtv \
  w3m \
  source-highlight \
  colormake-git \
  console-tdm
cd ~
touch .gemrc
echo "gem: --no-user-install" >> .gemrc
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
exec $SHELL
touch .bash_profile
cat > .bash_profile <<- "EOF"
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi
EOF
wget https://raw.githubusercontent.com/Gazaunga/Spacemacs/master/.spacemacs -O .spacemacs
sudo gem install --no-user-install pry ruby_parser rubocop bundler rails prawn
startx
