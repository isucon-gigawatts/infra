sudo apt update

# install git
sudo apt install git
git --version

# install make
sudo apt install build-essential
make --version

# install docker
curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo docker version

# install go 1.14.7
wget https://dl.google.com/go/go1.14.7.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.14.7.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
source ~/.profile
go version
