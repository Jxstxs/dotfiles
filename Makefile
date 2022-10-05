
git-subm-init:
	git submodule update --init --remote --merge --recursive
	git clone https://github.com/zsh-users/zsh-syntax-highlighting ${HOME}/.local/src/oh-my-zsh/plugins/zsh-syntax-highlighting
	# lua ${HOME}/.gits/personal/4583a041bd77656cc86d4f7d13b62a62/giter.lua a

git-subm-update-local:
	git submodule update --recursive

install-yay:
	cd ${HOME}/.gits/other/yay/ && makepkg -si

install-neovim:
	cd ${HOME}/.gits/other/neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo && sudo make install

install-yays:
	yay --sync --needed --norebuild --noredownload --nocleanmenu --nodiffmenu --noremovemake - < $(PKGS)/yays

install-pacmans:
	echo "Install "
	sudo pacman -S --noconfirm --needed - < ${PKGS}/pacmans 

install-pythons:
	echo "Installing Python packages"
	pip install -r ${PKGS}/pythons
	echo "Done installing Python packages"

backup-pkgs:
	echo "Started Package Backup"
	pacman -Qnq > ${PKGS}/pacmans
	pacman -Qqem > ${PKGS}/yays
	pip freeze > ${PKGS}/pythons
	git commit .pkgs/* -m "updated packages"
	echo "Package Backup done"

setup-tlp:
	sudo cp ${HOME}/.config/system/tlp.conf /etc/

backup-tlp:
	sudo cp /etc/tlp.conf ${HOME}/.config/system/
	
bootstrap: git-subm-init install-pacmans install-pythons install-neovim install-yay install-yays setup-tlp

backup: backup-pkgs backup-tlp

