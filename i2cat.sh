apt-get update
apt-get install -y openjdk-7-jdk sudo wireshark
groupadd wheel
usermod davidbutterworth -aG wheel

git clone https://github.com/floodlight/floodlight.git /ofelia/users/davidbutterworth/floodlight.git
cd /ofelia/users/davidbutterworth/floodlight.git
ant
echo "# Allow members of group wheel to execute any command" >> /etc/sudoers
echo "%wheel  ALL=(ALL:ALL) ALL, NOPASSWD: ALL" >> /etc/sudoers



