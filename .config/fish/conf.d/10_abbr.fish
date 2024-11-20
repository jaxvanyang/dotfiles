if status is-interactive
	# Git
	if command -v git &> /dev/null
		abbr ga git add
		abbr gcmsg git commit -m
		abbr gfa git fetch --all --prune --jobs=5
		abbr gl git pull
		abbr gp git push
		abbr grst git restore --staged
		abbr gst git status
		abbr gsc git switch -c
	end

	# Python
	abbr pdb python3 -m pdb
	abbr py python3
	if ! command -v python &> /dev/null
		abbr python python3
	end

	# Neovim
	abbr v nvim

	# Misc
	abbr l ll
end
