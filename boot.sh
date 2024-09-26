set -e

ascii_art=' _______  _______  _______  ___   _______
 |       ||       ||       ||   | |       |
 |    _  ||   _   ||    _  ||   | |_     _|
 |   |_| ||  | |  ||   |_| ||   |   |   |
 |    ___||  |_|  ||    ___||   |   |   |
 |   |    |       ||   |    |   |   |   |
 |___|    |_______||___|    |___|   |___|  '

echo -e "$ascii_art"
echo "=> POP-IT is for fresh Ubuntu 24.04.1 installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo apt-get update > /dev/null
sudo apt-get install -y git >/dev/null

POPIT_NAME="popit"
POPIT_HOME="$HOME/.local/share/${POPIT_NAME}"
POPIT_REPO="https://github.com/crholm/popit.git"


echo "Cloning popit..."
rm -rf ~/.local/share/popit
git clone $POPIT_REPO $POPIT_HOME >/dev/null
if [[ $POPIT_REF != "master" ]]; then
	cd $POPIT_HOME
	git fetch origin "${POPIT_REF:-stable}" && git checkout "${POPIT_REF:-stable}"
	cd -
fi

echo "Installation starting..."

export POPIT_HOME
source ${POPIT_HOME}/install.sh