sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo docker run hello-world
clear
mkdir dockerfile
nano dockerfile
sudo docker build -t myimage .
sudo docker run -it --name mycontainer myimage
sudo nano /etc/apache2/ports.com
sudo nano /etc/apache2/ports.conf
sudo docker run -it --name mycontainer1 myimage
sudo nano /etc/apache2/ports.conf
docker ps
sudo nano /etc/apache2/ports.conf
sudo service apache2 stop
[200~sudo apt-get remove apache2*
sudo apt-get remove apache2*
sudo apt-get purge apache2*
sudo apt-get autoremove
clear
mkdir Dockerfile
cd Dockerfile
nano Dockerfile
sudo docker build -t myimage .
sudo docker run -it --name mycontainer2 myimage
sudo nano /etc/apache2/ports.conf
clear
cd 
sudo apt-get update
sudo apt-get install apache2
sudo service apache2 start
sudo nano /etc/apache2/ports.conf
sudo service apache2 restart
sudo vi /etc/apache2/sites-enabled/000-default.conf
sudo apt-get update
sudo docker build -t myimage .
mkdir Dockerfile1
cd Dockerfile1
nano Dockerfile1
vi Dockerfile1
nano Dockerfile1
sudo docker build -t myimage .
sudo docker run -it --name mycontainer3 myimage
