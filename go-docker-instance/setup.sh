sudo apt update

# install git
sudo apt install git
git --version

# install build-essential
sudo apt install build-essential

# install docker
curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo docker version

# install go 1.14.7
wget https://dl.google.com/go/go1.14.7.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.14.7.linux-amd64.tar.gz
# # use usr/local/go/bin PATH
# echo 'export PATH=$PATH:/usr/local/go/bin' >> /home/$USER/.profile
# source ~/.profile
mv /usr/local/go/bin/* /usr/local/bin/
go version

# others
sudo apt install unzip
sudo apt install make

# install MySQL
sudo apt install mysql-server mysql-client
mysql --version

# nginx
sudo apt install nginx

# ssh-key
cat /dev/zero | ssh-keygen -t rsa -C 'isucon-dev-server' -q -N ""
echo '\n'
cat ~/.ssh/id_rsa.pub
echo "Add to https://github.com/settings/ssh/new ."

# alp
wget https://github.com/tkuchiki/alp/releases/download/v1.0.3/alp_linux_amd64.zip
unzip alp_linux_amd64.zip
sudo mv alp /usr/local/bin/
rm alp_linux_amd64.zip 
alp --help

# tool
wget percona.com/get/pt-query-digest
sudo mv pt-query-digest /usr/local/bin/
export TBLS_VERSION=1.43.1
curl -L https://git.io/dpkg-i-from-url | bash -s -- https://github.com/k1LoW/tbls/releases/download/v$TBLS_VERSION/tbls_$TBLS_VERSION-1_amd64.deb
rm tbls_v1.43.1_linux_amd64.tar.gz
