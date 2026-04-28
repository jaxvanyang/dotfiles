if status is-interactive
	if test -f /opt/homebrew/bin/brew
		set -g SHELL "$(command -v fish)"

		eval "$(/opt/homebrew/bin/brew shellenv)"
	end
end
