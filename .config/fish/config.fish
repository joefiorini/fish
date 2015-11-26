set -g WAHOO_PATH $HOME/.wahoo
set -g WAHOO_CUSTOM $HOME/.dotfiles
source $WAHOO_PATH/init.fish

set EXTRA_PATHS ./bin ./node_modules/.bin

function __check_bin --on-variable PWD --description 'Add ./bin to PATH if it exists in CWD'
  status --is-command-substitution; and return

  for check_path in $EXTRA_PATHS
    if contains $check_path $PATH
      set item_index (contains --index $check_path $PATH)
      set -e PATH[$item_index]
    end

    if test -d $check_path
      set -x PATH $check_path $PATH
    end
  end
end
