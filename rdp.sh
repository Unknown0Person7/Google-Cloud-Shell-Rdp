echo "Installing Google Chrome Remote Desktop.............."
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
clear
./chrome-remote-desktop_current_amd64.deb
clear
echo "Installed Google Chrome Remote Desktop.............."
clear
echo "Installing Google Chrome............................"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
clear
./google-chrome-stable_current_amd64.deb
clear
echo "Installed Google Chrome.............................."
clear
echo "Installing XFCE Desktop Environment.................."
sudo DEBIAN_FRONTEND=noninteractive \
    apt install --assume-yes xfce4 desktop-base dbus-x11 xscreensaver
echo "Installed XFCE Desktop Environment...................."
clear
echo "Creating a Chrome Remote Desktop Session..............."
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'
echo "Created a Chrome Remote Desktop Session................"
clear
sudo systemctl disable lightdm.service
clear
read -p "Enter Google Chrome Remote Desktop SSH Code: " sshcode
$sshcode
