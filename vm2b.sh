#sudo apt-get update
sudo mkdir /usr/local/java
sudo cp /tmp/shared/java.tar.gz /usr/local/java/java.tar.gz
cd /usr/local/java/
sudo tar xvf java.tar.gz
sudo update-alternatives --install /usr/bin/java java /usr/local/java/jdk1.8.0_45/jre/bin/java 1
sudo update-alternatives --install /usr/bin/javac javac /usr/local/java/jdk1.8.0_45/bin/javac 1
sudo update-alternatives --install /usr/bin/javaws javaws /usr/local/java/jdk1.8.0_45/jre/bin/javaws 1
sudo update-alternatives --set java /usr/local/java/jdk1.8.0_45/jre/bin/java
sudo update-alternatives --set javac /usr/local/java/jdk1.8.0_45/bin/javac
sudo update-alternatives --set javaws /usr/local/java/jdk1.8.0_45/jre/bin/javaws
sudo wget http://mirrors.ukfast.co.uk/sites/ftp.apache.org/maven/maven-3/3.3.9/binaries/apache-maven-3.5.0-bin.tar.gz
sudo cp /tmp/shared/maven.tar.gz /usr/local
sudo tar zxvf /usr/local/maven.tar.gz
sudo rm -rf /usr/local/maven.tar.gz
export M2_HOME=/usr/local/apache-maven-3.3.9
export M2=$M2_HOME/bin
export MAVEN_OPTS=-Xms256m -Xmx512m
echo “export PATH=$M2:$PATH” >> ~/.bashrc
sudo apt-get install -y git

sudo wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install -y jenkins
