

POPIT_HOME=${POPIT_HOME:="$HOME/.local/share/popit"}


# Ensure computer doesn't go to sleep or lock while installing
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

# Run desktop installers
for pre in ${POPIT_HOME}/install/01-system/*.sh; do source $pre; done

for installer in  ${POPIT_HOME}/install/02-main/*.sh; do source $installer; done

