## Pipeline to setup WSL on windows. Assuming WSL is already downloaded

### Setup writeup
%.pdf: %.md
	pandoc $< -o $@
%.docx: %.md
	pandoc $< -o $@

setup.pdf: setup.md
setup.docx: setup.md

ALIASES = alias.txt

create_alias: $(ALIASES)
	cat $^ >> ~/.bash_aliases
	source ~/.bash_aliases

linux_config:
	git clone https://github.com/dushoff/linux_config.git && cd linux_config && cp home/.*vimrc* ~/ && ls ~/.*vimrc*
	@cd && rm -rf linux_config

set_ssh:
	ssh-agent
	ssh-keygen
	cat /home/$$USER/.ssh/id_rsa.pub
