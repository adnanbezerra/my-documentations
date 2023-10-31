sudo apt update
sudo apt upgrade

echo "Instalador do Ruby"
sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
type rbenv
rbenv install 3.1.4 
rbenv global 3.1.4
gem install bundler
gem env home
gem install rails -v 6.1.4.1

rbenv rehash
rails -v

echo "Instalador do Node"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
source ~/.bashrc
nvm --version 

nvm install --lts

echo "Instalador do java"
sudo apt install default-jre
sudo apt install default-jdk
java -version
javac -version


