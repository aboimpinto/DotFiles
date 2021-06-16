# When configure a new computer: 
* Install neofetch
* Install powerline with command 'pip install powerline-shell'
	* To install pip, follow the guide for Ubuntu 20.04: https://linuxize.com/post/how-to-install-pip-on-ubuntu-20.04/
* Install lsd. Do not install via snap but get the last version from gitHub page: https://github.com/Peltoche/lsd/releases
* Download the font 'Hack Nerd Font' from: https://www.nerdfonts.com/
* Unzip the Hack.zip file to ~/.fonts
* Run the command 'fc-cache -fv' to manually rebuild the font cache
* Replace the .bashrc file 

![my shell looks like this](screenshots/UbuntuShell.png)

# Useful commands
## Run redis instance with modules
* This command load the reJSON module but other can be loaded (see: https://hub.docker.com/r/redislabs/redismod)
* Uses persistent data

```
	sudo docker run 
		--detach \ 
		-p 6379:6379 \
		-v /home/user/data:/data \
		redislabs/redismod \
		--loadmodule /usr/lib/redis/modules/rejson.so \
		--dir /data
```


# Install Third Party Codecs   
-> Ubuntu:   
```sudo apt install ubuntu-restricted-extras```   
-> Manjaro:    
```sudo pacman -S a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv opus wavpack x264 xvidcore```   

# Install 32-Bit NVIDIA driver
-> Ubuntu:   
``` sudo apt-get install libnvidia-gl-390:i386 ```   
Instead of 390, put your driver version. 
Use the command ```nvidia-smi``` to reveal NVIDIA driver version
