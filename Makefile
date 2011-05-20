init:
	git submodule init
	git submodule update

update:
	git submodule foreach git checkout master
	git submodule foreach git pull
