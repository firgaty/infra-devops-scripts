useradd headscale -m
usermod --shell /bin/bash headscale
passwd headscale
usermod -aG sudo headscale