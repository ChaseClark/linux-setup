# based off Omakub

# This tells bash that it should exit the script if any statement returns a non-true return value.
set -e

echo -e "setting up ..."

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning pop-setup..."
rm -rf ~/.local/share/pop-setup 
git clone https://github.com/ChaseClark/pop-setup.git ~/.local/share/pop-setup  >/dev/null

echo "Installation starting..."
source ~/.local/share/pop-setup/install.sh