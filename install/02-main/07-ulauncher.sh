sudo add-apt-repository universe -y
sudo add-apt-repository ppa:agornostal/ulauncher -y
sudo apt update -y
sudo apt install -y ulauncher

# Start ulauncher to have it populate config before we overwrite
mkdir -p ~/.config/autostart/
cp ~/.local/share/popit/configs/ulauncher.desktop ~/.config/autostart/ulauncher.desktop
cp ~/.local/share/popit/configs/ulauncher.json ~/.config/ulauncher/settings.json
#
#
#SHORTCUT_NAME="ulauncher-toggle"
#SHORTCUT_COMMAND="ulauncher-toggle"
#SHORTCUT_BINDING="<Control>space"
#
## Add the custom shortcut to the list of custom keybindings
#gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/$SHORTCUT_NAME/']"
#
## Set the name, command, and binding for the new custom shortcut
#gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:$SHORTCUT_NAME name "$SHORTCUT_NAME"
#gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:$SHORTCUT_NAME command "$SHORTCUT_COMMAND"
#gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:$SHORTCUT_NAME binding "$SHORTCUT_BINDING"