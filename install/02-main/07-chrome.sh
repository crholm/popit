
wget -O /tmp/chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y /tmp/chrome.deb
rm /tmp/chrome.deb
xdg-settings set default-web-browser google-chrome.desktop



## Figure out where i could configure the Edge browser
## .config/microsoft-edge/...

# https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-stable/
# curl and install
# flatpak install -y -u flathub com.microsoft.Edge
# flatpak run com.microsoft.Edge

#Note that the directories
#
#'/var/lib/flatpak/exports/share'
#'/home/raz/.local/share/flatpak/exports/share'
#
#are not in the search path set by the XDG_DATA_DIRS environment variable, so
#applications installed by Flatpak may not appear on your desktop until the
#session is restarted.
#
#Looking for matches…
