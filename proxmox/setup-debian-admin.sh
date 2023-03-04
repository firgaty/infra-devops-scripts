# Initialize Admin user
useradd admin -m
usermod --shell /bin/bash admin
passwd admin
usermod -aG sudo admin