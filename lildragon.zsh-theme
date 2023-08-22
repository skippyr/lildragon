setopt promptsubst

function _lildragon_get_branch() {
  local b=$(git branch --show-current 2>/dev/null)
  [[ ${b} ]] && echo " %F{3}%Bgit:(%f${b}%F{3})%b"
}

PROMPT='🐉⸖ %F{2}%B%n%b%f in %F{1}%B%~$(_lildragon_get_branch)%b%f
~%F{1}%%>%f '
