# backup dotfiles
mkdir ~/.olddots
cp ~/.bash_aliases ~/.olddots/.bash_aliases.bak
cp ~/.bash_custom ~/.olddots/.bash_custom.bak
cp ~/.git-completion.bash ~/.olddots/.git-completion.bash.bak
cp ~/.git-prompt.sh ~/.olddots/.git-prompt.sh.bak
cp ~/.gitconfig ~/.olddots/.gitconfig.bak
cp ~/.inputrc ~/.olddots/.inputrc.bak
cp ~/.vimrc ~/.olddots/.vimrc.bak
cp ~/.tmux.conf ~/.olddots/.tmux.conf.bak
cp -R ~/.vim ~/.olddots/.vim.bak
echo "all previous dotfiles were saved as backups in ~/.olddots"

# copy files over
cp ./.bash_aliases ~/.bash_aliases
cp ./.bash_custom ~/.bash_custom
cp ./.git-completion.bash ~/.git-completion.bash
cp ./.git-prompt.sh ~/.git-prompt.sh
cp ./.gitconfig ~/.gitconfig
cp ./.inputrc ~/.inputrc
cp -R ./.vim ~/.vim
cp ./.tmux.conf ~/.tmux.conf
cp ./.vimrc ~/.vimrc
echo "All of your dotfiles have been copied over!"
