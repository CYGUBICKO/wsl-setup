
# Setting up WSL on Windows


## PowerShell setup

- Run `PowerShell` as an administrator:
	
	```
	wsl --install
	```

- To change `WSL` version from `WSL 1` to `WSL 2`, first check the installed `<distro name>` e.g., `Ubuntu-22.04` under the `NAME`:

	```
	wsl -l -v
	```

- and then run

	```
	wsl --set-version <distro name> 2
	```

- replacing `<distro name>` with what you get from the previous command e.g., `wsl --set-version Ubuntu-22.04 2`.

- You may also need to enable  enable the virtual machine optional component used by `WSL 2`:

	```
	dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
	
	dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
	```

- Open the Microsoft Store and select your favorite Linux distribution, by searching for Ùbuntu`.

- After the installation, the first time you launch a newly installed Linux distribution, a console window will open and you'll be asked to wait for a minute or two for files to de-compress and be stored on your PC. All future launches should take less than a second.

- You will then need to create a user account and password for your new Linux distribution. I recommend using same username as the one used in windows/organization's system.


## Linux terminal setup

- You will need the following files:
	- `Makefile`  
	- `alias.txt`

- From linux terminal run:

	```
	sudo chmod +x setup.sh
	sudo ./setup.sh
	make create_alias
	make linux_config
	```

- To create linux directory structure, you need to run `GUI` app, which already configured in the alias. Run:

	```
	startgui
	```

- The line above will create folders. I don´t think, at this point, you still need `GUI` but the directory structure might be important. Close the GUI after this and proceed with the command line. See directory structure by `ls `.
