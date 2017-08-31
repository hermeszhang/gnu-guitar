# Clones a repo if it doesn't exist,
# updates it otherwise.
function git_repo_update {
	repo_src=$1
	repo_dst=$2
	if [ -e "$repo_dst" ]; then
		git --git-dir="$repo_dst/.git" pull origin master
	else
		git clone "$repo_src" "$repo_dst"
	fi
}
