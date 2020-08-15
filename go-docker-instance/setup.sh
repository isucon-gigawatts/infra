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

# # install MySQL
# sudo apt install mysql-server mysql-client
# mysql --version
