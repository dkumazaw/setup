# -----------------------------
# Some configs:

SHELLRC="$HOME/.bashrc"
VIM_RT="$HOME/.vim_runtime"
# -----------------------------

# Setup vimrc
echo 'Set up vim'
if [ -d "$VIM_RT" ]; then
    echo 'Vim runtime already exists'
else
    git clone --depth=1 https://github.com/dkumazaw/vimrc.git $VIM_RT
    sh $VIM_RT/install_awesome_vimrc.sh
fi

# git config
echo 'Configure git'
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

# Register aliases
echo 'Register aliases'

echo $'\n' >> $SHELLRC # Line break

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
