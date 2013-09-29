#
# 4. GitLab shell
#

# Go to home directory
cd /home/git

# Clone gitlab shell
sudo -u git -H git clone https://github.com/gitlabhq/gitlab-shell.git

cd gitlab-shell

# switch to right version
sudo -u git -H git checkout v1.7.1

sudo -u git -H cp config.yml.example config.yml

# Edit config and replace gitlab_url
# with something like 'http://domain.com/'
sudo -u git -H editor config.yml

# Do setup
sudo -u git -H ./bin/install
