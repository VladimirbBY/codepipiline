# NGINX Proxi


### Install Docker

sudo apt-get update  
sudo apt-get install -y cloud-utils apt-transport-https ca-certificates curl software-properties-common  
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -  
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"  
sudo apt-get update  
sudo apt-get install -y docker-ce  
sudo usermod -aG docker ubuntu  



### Run Docker Image

docker run -it -p 8080:80 -d vladimirby/proxi_nginx



### Docker Hub

<https://hub.docker.com/repository/docker/vladimirby/proxi_nginx>