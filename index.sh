# echo "Taking super user access"

# sudo -i

echo "Deleting preinstalled node"
sudo rm -rf /usr/local/{lib/node{,/.npm,_modules},bin,share/man}/{npm,node,man1/node}

echo "Installing Brew and BrewCask"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask
brew update && brew upgrade brew-cask

echo "Installing Local Ruby"
brew install ruby

echo "Installing Oh-my-ZSH"
brew install zsh zsh-completions
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s /bin/zsh

echo "Installing Softwares"
brew install git
brew cask install iterm2
brew cask install google-chrome
brew cask install rowanj-gitx
brew cask install slack
brew cask install sublime-text
brew cask install dropbox
brew cask install vlc

echo "Installing Utility Tools"
brew install ffmpeg

echo "Installing Dependencies"

# brew
brew install node
brew install ranger

# npm
npm install -g bower
npm install -g gulpjs/gulp#4.0

# gem
gem install sass
gem install compass

# pip
pip install Django==1.8.3
pip install djangorestframework
pip install fab
pip install ansible
pip install awscli
pip install virtualenv
pip install selenium
pip install splinter
