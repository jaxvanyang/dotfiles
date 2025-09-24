if status is-interactive
	if test -f /opt/homebrew/bin/brew
		eval "$(/opt/homebrew/bin/brew shellenv)"

		set -g SHELL /opt/homebrew/bin/fish
	end
end
