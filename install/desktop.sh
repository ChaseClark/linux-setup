# Ensure computer doesn't go to sleep or lock while installing
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

# Run desktop installers
for installer in ~/.local/share/pop-setup/install/desktop/*.sh; do source $installer; done

# Revert to normal idle and lock settings
gsettings set org.gnome.desktop.screensaver lock-enabled true
gsettings set org.gnome.desktop.session idle-delay 300

# final system update to update vscode mainly
echo "updating system again..."
sudo apt update -y
sudo apt dist-upgrade -y

# reboot to pickup changes
echo "rebooting in 10 seconds..."
echo "press ctrl+c to cancel"
sleep 10 && sudo reboot
