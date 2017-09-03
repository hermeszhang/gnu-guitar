# Clones a repo if it doesn't exist,
# updates it otherwise.
function git_repo_update {
	original_dir="$PWD"
	repo_src=$1
	repo_dst=$2
	if [ -e "$repo_dst" ]; then
		cd "$repo_dst"
		git pull origin master
		cd "$original_dir"
	else
		git clone "$repo_src" "$repo_dst"
	fi
}
