# sudo apt update
# sudo apt upgrade

read -p "Rodar instalador do Ruby? [Y/n]" -n 1 -r install_ruby
bash -c ""
if [[ $install_ruby =~ ^[Yy]$ ]]
then
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
fi

read -p "Rodar instalador do Node? [Y/n]" -n 1 -r install_node
echo -c ""
if [[ $install_node =~ ^[Yy]$ ]]
then
  echo "Instalador do Node"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
  source ~/.bashrc
  nvm --version 

  nvm install --lts
fi

read -p "Rodar instalador do Java? [Y/n]" -n 1 -r install_java
echo -c ""
if [[ $install_java =~ ^[Yy]$ ]]
then
  echo "Instalador do java"
  sudo apt install default-jre
  sudo apt install default-jdk
  java -version
  javac -version
fi

read -p "Rodar instalador do Postgres? [Y/n]" -n 1 -r install_psql
echo -c ""
if [[ $install_psql =~ ^[Yy]$ ]]
then
  sudo apt install postgresql postgresql-contrib
  sudo systemctl start postgresql.service
fi
