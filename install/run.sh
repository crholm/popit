

POPIT_HOME=${POPIT_HOME:="$HOME/.local/share/popit"}


# Ensure computer doesn't go to sleep or lock while installing
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

#sudo apt update
#sudo apt upgrade -y

# Run desktop installers
for file in ${POPIT_HOME}/install/01-system/*.sh; do source $file; done

for file in  ${POPIT_HOME}/install/02-main/*.sh; do source $file; done

for file in  ${POPIT_HOME}/install/03-theme/*.sh; do source $file; done

