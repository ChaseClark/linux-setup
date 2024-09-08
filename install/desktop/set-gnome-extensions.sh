sudo apt install -y pipx gir1.2-gtop-2.0
pipx install gnome-extensions-cli --system-site-packages

# fix path issue for script
pipx ensurepath

source .bashrc

# Turn off default Pop extensions
gnome-extensions disable ding@rastersoft.com

# Install new extensions
gext install tophat@fflewddur.github.io
gext install espresso@coadmunkee.github.com

# Compile gsettings schemas in order to be able to set them
sudo cp ~/.local/share/gnome-shell/extensions/tophat@fflewddur.github.io/schemas/org.gnome.shell.extensions.tophat.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/espresso@coadmunkee.github.com/schemas/org.gnome.shell.extensions.espresso.gschema.xml /usr/share/glib-2.0/schemas/
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

# Configure TopHat
gsettings set org.gnome.shell.extensions.tophat network-usage-unit bits
gsettings set org.gnome.shell.extensions.tophat show-animations false
gsettings set org.gnome.shell.extensions.tophat cpu-display 'numeric'
gsettings set org.gnome.shell.extensions.tophat mem-display 'numeric'
gsettings set org.gnome.shell.extensions.tophat disk-display 'numeric'

# Configure Espresso
gsettings set org.gnome.shell.extensions.espresso restore-state true
gsettings set org.gnome.shell.extensions.espresso show-notifications false