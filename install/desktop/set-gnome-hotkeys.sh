# quit app  
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"

# calc
gsettings set org.gnome.settings-daemon.plugins.media-keys calculator "['<Super>c']"

# email
gsettings set org.gnome.settings-daemon.plugins.media-keys email "['<Super>e']"

# home folder
gsettings set org.gnome.settings-daemon.plugins.media-keys home "['<Super>f']"

# terminal
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Super>t']"

# browser
gsettings set org.gnome.settings-daemon.plugins.media-keys www "['<Super>b']"

# Full-screen with title/navigation bar
gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Shift>F11']"

# Use 6 fixed workspaces instead of dynamic mode
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 6

# Use super for workspaces
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Super>1']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Super>2']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Super>3']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Super>4']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "['<Super>5']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "['<Super>6']"