if status is-interactive
	# integrate with Jump
	if command -v jump &> /dev/null
		jump shell fish | source
	end

	# uncategorized abbrs
	abbr l ll
	abbr pdb python -m pdb
	abbr py python
	abbr v nvim
end
