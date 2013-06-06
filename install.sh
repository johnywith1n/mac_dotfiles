#!/bin/sh
# Install Xcode and command line tool
# Install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# Tap additional repos
brew tap homebrew/dupes

# Install zsh and other packages
brew install rbenv zsh go nodejs python python3 scala sbt tmux wget openssl zsh-syntax-highlighting rethinkdb mongodb pyqt zmq svn

# Install homebrew-cask
brew tap phinze/hombrew-cask
brew install brew-cask
brew cask install adium skype google-chrome macvim spectacle alfred iterm2
 vlc calibre f-lux sourcetree sublime-text mou u-torrent colloquy racket eclipse caffeine postgres firefox-aurora

# Install powerline font
git clone git@github.com:Lokaltog/powerline-fonts.git
# Install tomorrow-theme
git clone git@github.com:chriskempson/tomorrow-theme.git

# Install necessary python package
pip install git+git://github.com/Lokaltog/powerline
pip install pylint virtualenv virtualenvwrappers numpy scipy matplotlib scikit-learn ipython 

easy_install ipython[zmq, qtconsole, notebook, test]

# Install oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# Symlink all dotfiles to home directories
# Configure vim
# Install vundle and necessary plugins
git clone https://github.com/gmarik/vundle.git

# Install ruby
brew install rbenv-default-gems rbenv-gem-rehash rbenv-vars
RUBY_CONFIGURE_OPTS="--with-openssl-dir=`brew --prefix openssl` --with-readline-dir=`brew --prefix readline`" rbenv install 2.0.0-p195
# Move default gem file to $RBENV_ROOT

# Install neccessary npm packages
npm -g install express derby yo grunt-cli bower less sass coffee-script jshint jsonlint csslint jade

# Install xcode package manager
git clone git@github.com:mneorr/Alcatraz.git
