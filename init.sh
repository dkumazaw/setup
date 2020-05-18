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

gitalias() {
    shorthand=$1
    original=$2

    git config --global alias.$shorthand $original
}

gitalias a add
gitalias co checkout
gitalias br branch
gitalias ci commit
gitalias st status
gitalias pu push
gitalias pl pull

# Register aliases
echo 'Register aliases'

echo $'\n' >> $SHELLRC # Line break

aliasfn() {
    shorthand=$1
    original=$2

    echo "alias $shorthand='$original'" >> $SHELLRC
}

# General
aliasfn c 'cd'
aliasfn g 'git'
aliasfn ll 'ls -lah'
aliasfn p 'cd ../'
aliasfn b 'cd -'
aliasfn v 'vim'
aliasfn src 'source'
aliasfn cl 'clear'

# GCP
aliasfn gssh 'gcloud compute ssh'
aliasfn gstart 'gcloud compute instances start'
aliasfn gstop 'gcloud compute instances stop'

# python
aliasfn jl 'jupyter lab'
aliasfn py3 'python3'
aliasfn ipy 'ipython'

# rust
aliasfn cr 'cargo run'
aliasfn ct 'cargo test'

source $SHELLRC
