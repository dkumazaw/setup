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
SHELLRC="~/.bashrc"
echo "alias g='git'" >> $SHELLRC
echo "alias ll='ls -lah'" >> $SHELLRC
echo "alias gssh='gcloud compute ssh'" >> $SHELLRC
echo "alias jl='jupyter lab'" >> $SHELLRC
echo "alias p='cd ../'" >> $SHELLRC
echo "alias b='cd -'" >> $SHELLRC
echo "alias v='vim'" >> $SHELLRC
echo "alias py3='python3'" >> $SHELLRC
echo "alias ipy='ipython'" >> $SHELLRC
echo "alias cl='clear'" >> $SHELLRC
