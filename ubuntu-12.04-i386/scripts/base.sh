apt-get -y update
apt-get -y upgrade
apt-get -y install build-essential curl wget linux-headers-$(uname -r)
apt-get -y install vim emacs emacs-goodies-el
apt-get clean

# Set up sudo
( cat <<'EOP'
%vagrant ALL=NOPASSWD:ALL
%ubuntu ALL=NOPASSWD:ALL
EOP
) > /tmp/ubuntu.sudo
chmod 0440 /tmp/ubuntu.sudo
mv /tmp/ubuntu.sudo /etc/sudoers.d/
