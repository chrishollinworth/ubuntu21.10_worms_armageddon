wget https://ia801004.us.archive.org/4/items/worms_armageddon_201905/worms_armageddon.iso
wget https://worms2d.info/files/WA_update-3.8.1_%5BCD%5D_Installer.exe
sudo dpkg --add-architecture i386 
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ impish main'
sudo apt update
sudo apt install --install-recommends winehq-stable
sudo add-apt-repository ppa:cdemu/ppa
sudo apt install cdemu-client
cdemu load 0 worms_armageddon.iso
wine /media/$USER/WA/Install/Install.exe
wine WA_update-3.8.1_\[CD\]_Installer.exe
