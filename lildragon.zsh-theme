setopt promptsubst

function _lildragon {
  function get_cwd {
    d=("${(s./.)PWD/${HOME}/~}")
    [[ ${#d} -gt 1 ]] && for i in {1..$((${#d} - 1))}; do
      [[ ${d[i]} == .* ]] && d[i]=${d[i][1,2]} || d[i]=${d[i][1]}
    done
    echo ${(j./.)d}
  }

  function stat_dirty {
    [[ $(git status -s 2>/dev/null) ]] && echo "*"
  }

  function get_branch {
    local b=$(git branch --show-current 2>/dev/null)
    [[ ${b} ]] && echo " %F{3}git:(%f${b}$(stat_dirty)%F{3})"
  }

  echo "🐉⸖ %F{2}%n %fin %F{1}$(get_cwd)$(get_branch)%f\n~%F{1}%%>%f "
}

PROMPT='$(_lildragon)'
