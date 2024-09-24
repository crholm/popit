USE_BROWSER="microsoft-edge-stable"
POPIT_HOME=${POPIT_HOME:="$HOME/.local/share/popit"}
name="WhatsApp"

cat <<EOF >~/.local/share/applications/${name}.desktop
[Desktop Entry]
Version=1.0
Name=${name}
Comment=
Exec=${USE_BROWSER} --app="https://web.whatsapp.com" --name=${name} --class=${name}
Terminal=false
Type=Application
Icon=${POPIT_HOME}/apps/icons/${name}.png
Categories=GTK;
MimeType=text/html;text/xml;application/xhtml_xml;
StartupNotify=true
EOF
