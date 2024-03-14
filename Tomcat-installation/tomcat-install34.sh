#!/bin/sh
# change hostname to tomcat
sudo hostnamectl set-hostname tomcat
#sudo su - ec2-user
cd /opt
# install Java JDK 1.8+ as a pre-requisit for tomcat to run.
sudo yum install git wget vim unzip -y
sudo yum install java-1.8.0-openjdk-devel -y
#install tomcat
sudo wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.19/bin/apache-tomcat-10.1.19.zip
sudo unzip apache-tomcat-10.1.19.zip
sudo rm -rf apache-tomcat-10.1.19.zip
### rename tomcat for good naming convention
sudo mv apache-tomcat-10.1.19.zip tomcat10
### assign executable permissions to the tomcat home directory
sudo chmod 775 -R /opt/tomcat9
sudo chown ec2-user:ec2-user -R /opt/tomcat10
### start tomcat
sh /opt/tomcat10/bin/startup.sh
#sh startup.sh = file not found
# create a soft link to start and stop tomcat from anywhere
# This will enable us to manage tomcat as a service
sudo ln -s /opt/tomcat10/bin/startup.sh /usr/bin/starttomcat
sudo ln -s /opt/tomcat10/bin/shutdown.sh /usr/bin/stoptomcat
starttomcat
sudo su - ec2-user
