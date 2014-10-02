Install rvm
curl -sSL https://get.rvm.io | bash -s stable
rvm install 2.1.1

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Homebrew

# Install brew cask
brew install caskroom/cask/brew-cask

# Cask
caskapps=(
  alfred
  dropbox
  google-chrome
  qlcolorcode
  slack
  qlmarkdown
  spotify
  vagrant
  iterm2
  qlprettypatch
  virtualbox
  atom
  flux
  firefox
  qlstephen
  vlc
  quicklook-json
  skype
  vitamin-r
  screenflow
  camtasia
  screenhero
  omnigraffle
  handbrake
  gimp
  ffmpegx
  coconutbattery
  evernote
)

echo "installing apps..."
brew cask install ${caskapps[@]}
brew cask alfred link


# Fonts

brew tap caskroom/fonts

fonts=(
  font-m-plus
  font-clear-sans
  font-roboto
  font-open-sans
)

echo "installing fonts..."
brew cask install ${fonts[@]}
