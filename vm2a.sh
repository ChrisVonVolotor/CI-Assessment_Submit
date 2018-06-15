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
sudo apt-get install -y git
git config --global user.email "evilchris9@gmail.com"
git config --global user.name "ChrisVonVolotor"
git clone https://github.com/ChrisVonVolotor/CI_AssessmentJavaFile.git /tmp/assessment/
