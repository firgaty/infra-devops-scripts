SCRIPT_PATH=$(dirname $(realpath -s $0))
HEADSCALE_VERSION='0.20.0'
ARCH='amd64'

wget --output-document=/usr/local/bin/headscale \
   https://github.com/juanfont/headscale/releases/download/v${HEADSCALE_VERSION}/headscale_${HEADSCALE_VERSION}_linux_${ARCH}

chmod +x /usr/local/bin/headscale
mkdir -p /etc/headscale

touch /var/lib/headscale/db.sqlite
touch /etc/headscale/config.yaml