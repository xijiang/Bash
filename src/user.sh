#!/usr/bin/env bash
echo Remember to run root.sh and user.sh first before the following configuration
########################################
# git
git config --global user.name "Xijiang Yu"
git config --global user.email xijiang@users.noreply.github.com
# git commit --amend --reset-author
git config --global core.editor emacs # if you like Emacs more, default vi
git config --global merge.tool meld
git config --global alias.ss 'status -s'
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"
# git config --global color.ui true  # for CentOS version
# for nbdime
pip install --user --upgrade nbdime
jupyter-serverextension enable --py nbdime --user
nbdime config-git --enable --global
# git config --list  # to see the current configurations

########################################
# julia
## Init
cd ~/Music
git clone https://github.com/JuliaLang/julia
cd julia
make
ln -s ~/Music/julia/usr/bin/julia ~/.local/bin/Julia

########################################
# env
rm -f ~/.bashrc ~/.emacs ~/.taskrc # if exist
ln -s ~/.ssh/emacs ~/.emacs
ln -s ~/.ssh/bashrc ~/.bashrc
ln -s ~/.ssh/taskrc ~/.taskrc

systemctl enable --user emacs
systemctl start --user emacs
gsettings set \
	  org.gnome.shell.app-switcher \
	  current-workspace-only \
	  true

########################################
# python
pip install --user \
    seaborn \
    lxml \
    scikit-image \
    scikit-learn \
    sympy \
    nltk \
    jupyterlab \
    imblearn \
    shap \
    keras \
    h5py \
    tensorflow

jupyter serverextension enable --py jupyterlab

########################################
# useful scripts
mkdir -p ~/.local/bin
ln -s ~/.ssh/jisuan ~/.local/bin
ln -s ~/.yview.sh ~/.local/bin

########################################
## Joplin
script=Joplin_install_and_update.sh
curl \
    https://raw.githubusercontent.com/laurent22/joplin/master/$script \
    -o ~/.local/bin/$script
chmod u+x ~/.local/bin/Joplin_install_and_update.sh
Joplin_install_and_update.sh

########################################
## Secret files in .ssh
chmod 600 ~/.ssh/{secrets.db,config,id_rsa,id_rsa.pub}

########################################
## Update fonts
fc-cache
