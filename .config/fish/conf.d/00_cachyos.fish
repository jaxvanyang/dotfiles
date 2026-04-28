if status is-interactive
	set -l config /usr/share/cachyos-fish-config/cachyos-config.fish
	if test -f "$config"
		source "$config"
	end
end
