echo "installing nvm and node lts..."

# nvm install script from https://github.com/nvm-sh/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

# need to use nvm command without restarting shell
source ~/.bashrc

nvm install --lts