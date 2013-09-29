#
# 7. Nginx
#

## Installation

sudo apt-get install -y nginx


## Site Configuration

sudo cp lib/support/nginx/gitlab /etc/nginx/sites-available/gitlab
sudo ln -s /etc/nginx/sites-available/gitlab /etc/nginx/sites-enabled/gitlab

# Change YOUR_SERVER_FQDN to the fully-qualified
# domain name of your host serving GitLab.
sudo editor /etc/nginx/sites-available/gitlab


## Restart

sudo service nginx restart
