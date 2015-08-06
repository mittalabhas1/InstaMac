echo "Taking super user access"

sudo -i

echo "Installing Brew and BrewCask"

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask
brew update && brew upgrade brew-cask

echo "Installing Local Ruby"

brew install ruby

echo "Installing ZSH"

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

echo "Installing Dependencies"

brew install npm
brew install python
brew install ranger

npm install -g yo
npm install -g bower
npm install -g gulp
npm install -g grunt-cli bower
npm install -g generator-webapp
npm install -g generator-angular
npm install -g generator-gulp-webapp
npm install -g generator-gulp-angular

gem install sass
gem install compass

pip install Django==1.6.5
pip install djangorestframework
pip install markdown
pip install django-filter
pip install virtualenv
pip install selenium
pip install splinter
