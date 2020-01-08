#!/bin/bash
apt update
sudo apt install curl -y

 #bash <(curl  -s  -L  https://hell.flytohell.tk/script/aria2dash.sh)
#Done.
sudo apt-get install apache2 -y
sudo apt-get install php7.0 -y
sudo apt-get install libapache2-mod-php7.0
sudo apt-get install mysql-server -y
sudo apt-get install php7.0-mysql
sudo apt-get install phpmyadmin -y
sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
sudo service mysql restart
sudo systemctl restart apache2.service
wget https://cn.wordpress.org/wordpress-4.7.4-zh_CN.zip
sudo unzip wordpress-4.7.4-zh_CN.zip
mysql -u root -p
#CREATE DATABASE wordpress;
#CREATE USER wordpressuser;
#SET PASSWORD FOR wordpressuser= PASSWORD("password123");
#GRANT ALL PRIVILEGES ON wordpress.* TO wordpressuser IDENTIFIED BY"password123";
#FLUSH PRIVILEGES;
#exit;
sudo mv wordpress/* /var/www/html/
sudo chmod -R 777 /var/www/html/
sudo mv /var/www/html/index.html /var/www/html/index~.html
sudo systemctl restart apache2.service
