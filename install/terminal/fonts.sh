# attempt to install without manually accepting the EULA
# from https://stackoverflow.com/questions/49049949/how-to-accept-license-agreement-during-docker-build
echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true" | debconf-set-selections \
&& DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends ttf-mscorefonts-installer