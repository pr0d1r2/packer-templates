#
# 2. Ruby
#

sudo apt-get remove -y ruby1.8

mkdir /tmp/ruby && cd /tmp/ruby
curl --progress ftp://ftp.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p247.tar.gz | tar xz
cd ruby-2.0.0-p247
./configure
make
sudo make install

cd
rm -rf /tmp/ruby

sudo gem install bundler --no-ri --no-rdoc
