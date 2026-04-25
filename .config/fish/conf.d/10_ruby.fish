if status is-interactive
	if command -q gem
		set -gx GEM_HOME "$(gem env user_gemhome)"
		fish_add_path -g "$GEM_HOME/bin"
	end
end
