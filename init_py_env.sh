
python3 -m pip install --user pipx
python3 -m pip install --user -U pipx
python3 -m pipx ensurepath
python3 -m userpath append ~/.local/bin

pipx completions
pipx install cowsay
cowsay moon
pipx list
