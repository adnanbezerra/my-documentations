# Como instalar Ruby on Rails e Node em um PC totalmente novo?

**Disclaimer:** Why isn't it in English?

**Answer:** Because I'm Brazilian and this is a tutorial written by me for my future self. If you want to read it, then translate the page.

## TL;DR

### Instalando o Ruby:

``` bash
sudo apt update
sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
type rbenv

outrput => rbenv is a shell function from /home/marcus/.zshrc
In my case, I'm using zsh shell
continue...

rbenv install 3.1.4 (you can choose another version using rbenv install -l to list options)
rbenv global 3.1.4

ruby -v (to ensure your version in correctly)

gem install bundler
gem env home
gem install rails -v 6.1.4.1

rbenv rehash
rails -v
``` 