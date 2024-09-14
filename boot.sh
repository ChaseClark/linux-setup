# based off Omakub

# This tells bash that it should exit the script if any statement returns a non-true return value.
set -e

echo -e "setting up ..."

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning linux-setup..."
rm -rf ~/.local/share/linux-setup 
git clone https://github.com/ChaseClark/linux-setup/tree/pop22-04 ~/.local/share/linux-setup  >/dev/null

echo "Installation starting..."
source ~/.local/share/linux-setup/install.sh