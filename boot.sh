# based off Omakub

# This tells bash that it should exit the script if any statement returns a non-true return value.
set -e

echo -e "setting up ..."

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning linux-setup..."
rm -rf ~/.local/share/linux-setup 
git clone https://github.com/ChaseClark/linux-setup.git ~/.local/share/linux-setup  >/dev/null

# switch to 24-04
cd ~/.local/share/linux-setup
git checkout pop24-04
cd -

echo "Installation starting..."
source ~/.local/share/linux-setup/install.sh