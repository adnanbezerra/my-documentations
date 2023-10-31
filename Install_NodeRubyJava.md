# Como instalar Ruby on Rails e Node em um PC totalmente novo?

**Disclaimer:** Why isn't it in English?

**Answer:** Because I'm Brazilian and this is a tutorial written by me for my future self. If you want to read it, then translate the page.

## TL;DR

### Começando

Agora que eu criei um script que faz isso tudo, basta baixar ele, dar permissão de execução e meter bronca.

Note que, sim, ele é LENTO para rodar porque algumas coisas são PESADAS. Tenha PACIÊNCIA. Mais tarde vou fazer algum método dele só seguir com confirmação do usuário.

```bash
sudo apt update
sudo apt upgrade
```

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

rbenv install 3.1.4 (you can choose another version using rbenv install -l to list options)
rbenv global 3.1.4

ruby -v (to ensure your version in correctly)

gem install bundler
gem env home
gem install rails -v 6.1.4.1

rbenv rehash
rails -v
``` 

## Instalando o Node

``` bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
source ~/.bashrc
nvm --version (para confirmar se instalou mesmo)

nvm install --lts
``` 

## Instalando o Java

``` bash
sudo apt install default-jre
sudo apt install default-jdk
java -version
javac -version
```
