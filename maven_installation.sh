# install Java JDK 1.8+ as a pre-requisit for maven to run.

sudo hostname maven
cd /opt
sudo yum install vim wget nano tree unzip git-all -y
sudo yum install java-11-openjdk-devel java-1.8.0-openjdk-devel -y
java -version
git --version

#Step1) Download the Maven Software
sudo wget https://dlcdn.apache.org/maven/maven-3/3.8.5/binaries/apache-maven-3.8.5-bin.zip
sudo unzip apache-maven-3.8.5-bin.zip
sudo rm -rf apache-maven-3.8.5-bin.zip
sudo mv apache-maven-3.8.5/ maven

#vi ~/.bash_profile  # and add the lines below
echo "export M2_HOME=/opt/maven" >> ~/.bash_profile 
echo "export PATH=$PATH:$M2_HOME/bin" >> ~/.bash_profile

source ~/.bash_profile
mvn -version 
