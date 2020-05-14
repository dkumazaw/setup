# Setup vimrc
echo 'Setting up vim'
git clone --depth=1 https://github.com/dkumazaw/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# git config
echo 'Configure git'
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

# Register aliases
SHELLRC="$HOME/.bashrc"

aliasfn() {
    shorthand=$1
    original=$2

    echo "alias $shorthand='$original'" >> $SHELLRC
}

aliasfn g 'git'
aliasfn ll 'ls -lah'
aliasfn gssh 'gcloud compute ssh'
aliasfn jl 'jupyter lab'
aliasfn p 'cd ../'
aliasfn b 'cd -'
aliasfn v 'vim'
aliasfn py3 'python3'
aliasfn ipy 'ipython'
aliasfn cl 'clear'

source $SHELLRC
