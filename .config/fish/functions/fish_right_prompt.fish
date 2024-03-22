function fish_right_prompt
	set -l green (set_color green)
	set -l normal (set_color normal)
	set -l time (date "+%H:%M:%S")

	if jobs &> /dev/null
		echo "$normal$time ($green$(jobs | count)$normal)"
	else
		echo "$normal$time"
	end
end
