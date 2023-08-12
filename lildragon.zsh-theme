setopt promptsubst

function __Lildragon()
{
	function Get_Branch()
	{
		typeset -r branch=$(git branch --show-current 2>/dev/null)
		[[ ${branch} ]] && echo " %F{3}%Bgit:(%f${branch}%F{3})%b"
	}

	echo "🐉⸖ %F{2}%B%n%b%f in %F{1}%B%~$(Get_Branch)%b%f\n~%F{1}%%>%f "
}

PROMPT='$(__Lildragon)'
