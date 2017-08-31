function cmake_build {
	project=$1
	source_dir="$root/repositories/$project"
	binary_dir="$root/build/$project"
	install_dir="$root/package"
	mkdir -p "$binary_dir"
	cd "$binary_dir"
	cmake "$source_dir" -DCMAKE_INSTALL_PREFIX="$install_dir"
	cmake --build . --target install
}
