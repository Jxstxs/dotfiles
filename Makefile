
git-subm-init:
	git submodule update --init --remote --merge
	lua ${HOME}/.gits/personal/other/4583a041bd77656cc86d4f7d13b62a62/giter.lua a

install-yays:
	yay --sync --needed --norebuild --noredownload --nocleanmenu --nodiffmenu --noremovemake - < $(PKGS)/yays

install-pacmans:
	sudo pacman -S --noconfirm --needed - < ${PKGS}/pacmans 

install-pythons:
	pip install -r ${PKGS}/pythons

backup-pkgs:
	pacman -Qnq > ${PKGS}/pacmans
	pacman -Qqem > ${PKGS}/yays
	pip freeze > ${PKGS}/pythons
	git commit .pkgs/* -m "updated packages"
