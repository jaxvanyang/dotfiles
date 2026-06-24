check:
	stylua --check .config .luacheckrc
	luacheck .config .luacheckrc
	typos . .config .luacheckrc .vimrc

fix:
	typos -w . .config .luacheckrc .vimrc
	stylua .config .luacheckrc
