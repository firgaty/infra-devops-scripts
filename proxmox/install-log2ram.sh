echo "deb [signed-by=/usr/share/keyrings/azlux-archive-keyring.gpg] http://packages.azlux.fr/debian/ bullseye main" | tee /etc/apt/sources.list.d/azlux.list
wget -O /usr/share/keyrings/azlux-archive-keyring.gpg  https://azlux.fr/repo.gpg
apt update
apt install log2ram

cp resources/log2ram.conf /etc/