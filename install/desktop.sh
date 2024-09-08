# TODO: Ensure computer doesn't go to sleep or lock while installing

# Run desktop installers
for installer in ~/.local/share/pop-setup/install/desktop/*.sh; do source $installer; done

# final system update to update vscode mainly
echo "updating system again..."
sudo apt update -y
sudo apt dist-upgrade -y

# reboot to pickup changes
echo "rebooting in 10 seconds..."
echo "press ctrl+c to cancel"
sleep 10 && sudo reboot
