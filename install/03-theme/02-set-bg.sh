
THEME_COLOR="blue"
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

POPIT_HOME=${POPIT_HOME:="$HOME/.local/share/popit"}
BACKGROUND_ORG_PATH="${POPIT_HOME}/install/03-theme/bg.jpg"

mkdir -p $HOME/.local/share/backgrounds
BACKGROUND="$HOME/.local/share/backgrounds/modfin.jpg"
cp $BACKGROUND_ORG_PATH $BACKGROUND

echo "Setting background to $BACKGROUND"
gsettings set org.gnome.desktop.background picture-uri $BACKGROUND
gsettings set org.gnome.desktop.background picture-uri-dark $BACKGROUND
gsettings set org.gnome.desktop.background picture-options 'zoom'
