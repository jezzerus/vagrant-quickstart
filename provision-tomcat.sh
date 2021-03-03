#!/bin/bash
apt-get update -y
apt-get upgrade -y
apt-get install -y nano git openjdk-7-jdk openjdk-7-jre-headless
cd /usr/local
wget https://apache.claz.org/tomcat/tomcat-8/v8.5.63/bin/apache-tomcat-8.5.63.tar.gz
tar -xvzf apache-tomcat-8.5.63.tar.gz
ln -s apache-tomcat-8.5.63 tomcat

cp /vagrant/tomcat8 /etc/init.d/tomcat8
chmod 755 /etc/init.d/tomcat8
update-rc.d tomcat8 defaults
service tomcat8 start 


