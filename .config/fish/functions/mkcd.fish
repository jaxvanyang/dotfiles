function mkcd --argument dir
	if test (count $argv) -ne 1 || test -z $dir
		return 1
	end
	mkdir -p $dir && cd $dir
end
