rm -rf ~/.pyenv
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
#echo 'export PATH=~/.pyenv/bin:$PATH' >> ~/.bashrc
#echo 'export PYENV_ROOT=~/.pyenv' >> ~/.bashrc
#echo 'eval "$(pyenv init -)"' >> ~/.bashrc
#source ~/.bashrc

echo 'export PATH=~/.pyenv/bin:$PATH' >> ~/.zshrc
echo 'export PYENV_ROOT=~/.pyenv' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc

# 命令行单独执行
#source ~/.zshrc
pyenv --list
pyenv versions
pyenv install --list | grep 2.7
pyenv install 2.7.18
pyenv versions
pyenv install --list | grep 3.7
pyenv install 3.7.12
pyenv versions

git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc

pyenv virtualenvs
