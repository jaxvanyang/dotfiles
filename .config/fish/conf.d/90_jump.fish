if status is-interactive
	if command -v jump &> /dev/null
		jump shell fish | source
	end
end
