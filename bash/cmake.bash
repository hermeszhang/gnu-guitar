function cmake_build {
	project=$1
	shift
	cmake_args=$@
	source_dir="$root/repositories/$project"
	binary_dir="$root/build/$project"
	install_dir="$root/package"
	mkdir -p "$binary_dir"
	cd "$binary_dir"
	cmake "$source_dir" -DCMAKE_INSTALL_PREFIX="$install_dir" \
	                    -DCMAKE_PREFIX_PATH="$install_dir" \
	                    -DBUILD_SHARED_LIBS=OFF \
                            -DCMAKE_BUILD_TYPE=Debug $cmake_args
	cmake --build . --target install
}

function cmake_clean {
	project=$1
	binary_dir="$root/build/$project"
	cmake --build "$binary_dir" --target clean
}
