    1  sudo apt update
    2  sudo apt install openjdk-8-jdk
    3  wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
    4  sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
    5  sudo apt update
    6  sudo apt install jenkins
    7  systemctl status jenkins
  
