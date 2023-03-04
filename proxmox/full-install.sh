echo 'Install Util Packages'
sh install-util-packages.sh

echo 'Install nagbuster'
sh install-nagbuster.sh

echo 'Disable HA service'
sh disable-ha-service.sh

echo 'Install log2ram'
sh install-log2ram.sh

echo 'Setup Admin'
sh setup-debian-admin.sh

echo "Install finished - It's recommended to reboot"