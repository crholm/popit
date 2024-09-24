

# Exit immediately if a command exits with a non-zero status
set -e


POPIT_HOME=${POPIT_HOME:="$HOME/.local/share/popit"}

# Desktop software and tweaks will only be installed if we're running Gnome
RUNNING_GNOME=$([[ "$XDG_CURRENT_DESKTOP" == *"GNOME"* ]] && echo true || echo false)


if $RUNNING_GNOME; then
  # Ensure computer doesn't go to sleep or lock while installing
  gsettings set org.gnome.desktop.screensaver lock-enabled false
  gsettings set org.gnome.desktop.session idle-delay 0



  echo "Installing terminal and desktop tools.."

  source ${POPIT_HOME}/install/run.sh

  gsettings set org.gnome.desktop.screensaver lock-enabled true
  gsettings set org.gnome.desktop.session idle-delay 300
fi
