function __resolvetcolinks {
	local foundlinks=( `grep -o 'https://t.co/[a-zA-Z0-9]*' <<< "$1"` )
	for link in "${foundlinks[@]}" ; do
		resultinglink=`curl -s -D - "$link" | grep location: | sed 's/^location: //g'`
		sed "sA${link}A${resultinglink}Ag" <<< "$1"
	done
	# echo "$__content"
}

__resolvetcolinks "$@"