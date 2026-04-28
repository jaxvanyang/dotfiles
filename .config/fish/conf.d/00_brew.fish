if status is-interactive
	if test -f /opt/homebrew/bin/brew
		if test -f "$(command -v fish)"
			set -g SHELL "$(command -v fish)"
		end

		eval "$(/opt/homebrew/bin/brew shellenv)"
	end
end
