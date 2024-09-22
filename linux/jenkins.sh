# Installation for Jenkins in ubuntu

if [ "$(systemctl is-active jenkins)" = "inactive" ]; then
    echo "Jenkins Not Found, Installing................"
    sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
    https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

    echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
        https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
        /etc/apt/sources.list.d/jenkins.list > /dev/null
        
    sudo apt-get update -y
    sudo apt-get install fontconfig openjdk-17-jre -y
    sudo apt-get install jenkins -y

    sudo systemctl enable jenkins
    sudo systemctl start jenkins
fi

# This Project Required Jenkins to have docker Installed 
# check if docker is installed or not if not Install Docker & add Jenkins user to docker group

if [ "$(systemctl is-active docker)" = "inactive" ]; then
    echo "Docker Not Found, Installing................"
    echo "Docker not installed, installing docker"
    sudo apt install docker.io -y
fi

sudo systemctl stop jenkins
# add Jenkins user to docker group
sudo usermod -aG docker jenkins
sudo systemctl start jenkins
