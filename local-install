#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="bashrc vimrc vim zshrc zpreztorc gitconfig fonts"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

install_zsh () {
# Test to see if zshell is installed.  If it is:
if [ -f /bin/zsh -o -f /usr/bin/zsh ]; then
    # Clone Prezt
    if [[ ! -d $dir/.zprezto/ ]]; then
        git clone --recursive https://github.com/sorin-ionescu/prezto.git ~/.zprezto

        echo "====================================="
        echo "Be sure to run the following command:"
        echo "setopt EXTENDED_GLOB
              for rcfile in \"\${ZDOTDIR:-$HOME}\"/.zprezto/runcoms/^README.md(.N); do
                  ln -s \"\$rcfile\" \"${ZDOTDIR:-\$HOME}/.\${rcfile:t}\"
              done"
        echo "====================================="

    fi
    # Set the default shell to zsh if it isn't currently set to zsh
    if [[ ! $(echo $SHELL) == $(which zsh) ]]; then
        chsh -s $(which zsh)
    fi
else
    # If zsh isn't installed, get the platform of the current machine
    platform=$(uname);
    # If the platform is Linux, try an apt-get to install zsh and then recurse
    if [[ $platform == 'Linux' ]]; then
        sudo apt-get install zsh
        install_zsh
    # If the platform is OS X, tell the user to install zsh :)
    elif [[ $platform == 'Darwin' ]]; then
        echo "Please install zsh, then re-run this script!"
        exit
    fi
fi
}

install_vundle () {
    if [[ ! -d $dir/vim/bundle/Vundle.vim ]]; then
        git clone https://github.com/gmarik/Vundle.vim.git $dir/vim/bundle/Vundle.vim
    fi
    vim +PluginInstall +qall
}

install_vimpager () {
    if [[ ! -f /usr/local/bin/vimpager ]]; then
        cd ~/ && mkdir tmp;
        cd tmp
        git clone git://github.com/rkitover/vimpager
        cd vimpager
        sudo make install
    fi
}

install_zsh

install_vundle

if [[ ! -d $dir/vim/backup ]]; then
    mkdir $dir/vim/backup
fi

if [[ ! -d $dir/vim/swap ]]; then
    mkdir $dir/vim/swap
fi

install_vimpager
