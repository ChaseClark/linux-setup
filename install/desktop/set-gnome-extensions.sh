# sudo apt install -y gnome-shell-extension-manager pipx

# sudo apt install -y pipx gir1.2-gtop-2.0
# pipx install gnome-extensions-cli --system-site-packages

# # Turn off default Pop extensions
# gnome-extensions disable ding@rastersoft.com

# # Install new extensions
# gext install tophat@fflewddur.github.io

# # Compile gsettings schemas in order to be able to set them
# sudo cp ~/.local/share/gnome-shell/extensions/tophat@fflewddur.github.io/schemas/org.gnome.shell.extensions.tophat.gschema.xml /usr/share/glib-2.0/schemas/
# sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

# # Configure TopHat
# # gsettings set org.gnome.shell.extensions.tophat show-icons false
# # gsettings set org.gnome.shell.extensions.tophat show-cpu false
# # gsettings set org.gnome.shell.extensions.tophat show-disk false
# # gsettings set org.gnome.shell.extensions.tophat show-mem false
# gsettings set org.gnome.shell.extensions.tophat network-usage-unit bits
