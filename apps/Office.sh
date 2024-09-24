USE_BROWSER="microsoft-edge-stable"
POPIT_HOME=${POPIT_HOME:="$HOME/.local/share/popit"}
name="Office"

cat <<EOF >~/.local/share/applications/${name}.desktop
[Desktop Entry]
Version=1.0
Name=${name}
Comment=
Exec=${USE_BROWSER} --app="https://www.office.com/?ms.officeurl=webapps" --name=${name} --class=${name}
Terminal=false
Type=Application
Icon=${POPIT_HOME}/apps/icons/${name}.png
Categories=GTK;
MimeType=text/html;text/xml;application/xhtml_xml;
StartupNotify=true
EOF


#Exec=google-chrome --app="https://web.whatsapp.com" --name=WhatsApp --class=Whatsapp
