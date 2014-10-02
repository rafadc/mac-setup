Install rvm
curl -sSL https://get.rvm.io | bash -s stable
rvm install 2.1.1

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Homebrew
apps=(
  mutt
  go
  nethack
  node
  git
  gist
  zsh
  zsh-completions
  zsh-lovers
  opencv
  octave
  unrar
  r
  flac
  curl
  rmthrash
  clojure
  cmake
  sqlite
  gzip
  graphviz
  bash
  bash-completion
  heroku-toolbelt
  ack
  postgresql
  haskell-platform
  aspell
  imagemagick
  sshuttle
  sshfs
  the_silver_searcher
  wget
  markdown
  ghc
  gnuplot
  erlang
  neo4j
  mongodb
  mkvtoolnix
  lua
  macvim
  emacs
)

echo "installing homebrew apps..."
brew cask install ${apps[@]}

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
  cyberduck
  sourcetree
  utorrent
  soulseek
  sopcast
)

echo "installing cask apps..."
brew cask install ${caskapps[@]}
brew cask alfred link

# Extra scripts after install
open /opt/homebrew-cask/Caskroom/utorrent/latest/uTorrent-Installer.app

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
