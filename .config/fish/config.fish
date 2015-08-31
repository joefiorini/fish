set -g WAHOO_PATH $HOME/.wahoo
set -g WAHOO_CUSTOM $HOME/.dotfiles
source $WAHOO_PATH/init.fish

function ll --description 'List contents of directory using long format'
	ls -lahv $argv
end

set PATH ./node_modules/.bin $PATH
set PATH ./.cabal-sandbox/bin $PATH
set PATH $HOME/.cabal/bin $PATH
set PATH $HOME/bin $PATH
set PATH /usr/local/share/npm/bin $PATH
