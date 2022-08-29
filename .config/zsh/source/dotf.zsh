alias ds="git -C $DOT status"
alias dl="git -C $DOT -P log | nvim"

alias db="git -C $DOT -P branch -a | nvim"
function dbn() {
  echo "Name of New Branch: "
  read branchName
  git -C $DOT branch $branchName
  git -C $DOT checkout $branchName
}

function dco() {
  branch=$(git -C $DOT -P branch -a | fzf --prompt "Choose Branch to switch to: ")
  git -C $DOT checkout $branch
}

alias dph="git -C $DOT push"
alias dpp="git -C $DOT pull"

function dac() {
  gf=$(git -C $DOT status -s | awk '{print $2}' | fzf --preview="git -C $DOT diff {}" --prompt "File to Commit: ")
  echo "Commit Message: "
  read msg
  git -C $DOT add "$gf"
  git -C $DOT commit "$gf" -m "$msg"
}

function dca(){
  gf=$(git -C $DOT status -s | awk '{print $2}')
  for f in $gf; do
    # hier fehlts
    echo $f
  done
}
