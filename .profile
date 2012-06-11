PATH=$PATH:$HOME/.hubflow/bin

function git {
  cmd_hub="$(which hub 2>&-)"
  if [[ -x "$cmd_hub" ]]; then
    hub "$@"
  else
    cmd_git="$(which git 2>&-)"
    if [[ ! -x "$cmd_git" ]]; then
      hash -r
    fi
    git "$@"
  fi
}
