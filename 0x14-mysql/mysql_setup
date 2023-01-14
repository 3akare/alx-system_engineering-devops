curl https://pastebin.com/raw/Pd5bw2Zr -o signature.key
sudo apt-key add signature.key
sudo sh -c 'echo "deb http://repo.mysql.com/apt/ubuntu bionic mysql-5.7" >> /etc/apt/sources.list.d/mysql.list'
sudo apt-get update
sudo apt-cache policy mysql-server
sudo apt install -fy mysql-client=5.7* mysql-community-server=5.7* mysql-server=5.7*
