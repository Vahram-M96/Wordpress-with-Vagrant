#!/bin/bash

apt-get update
apt-get install nginx -y

apt-get install software-properties-common -y
add-apt-repository ppa:ondrej/php -y
apt-get update
apt-get install php7.2 php7.2-fpm php7.2-mbstring php7.2-mysql php7.2-curl -y
apt-get install php7.2-cli php7.2-fpm php7.2-mysql php7.2-json php7.2-opcache php7.2-mbstring php7.2-xml php7.2-gd php7.2-curl -y
service php7.2-fpm restart
wget https://wordpress.org/latest.tar.gz
tar xzvf latest.tar.gz
cp -r wordpress/ /var/www/html/
rm /etc/nginx/sites-enabled/default
rm /etc/nginx/sites-available/default

apt-get install mysql-server -y

sudo mysql -e "CREATE DATABASE wordpress;"
sudo mysql -e "CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'wp123456789';"
sudo mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost';"
chown -R www-data: /var/www/html/wordpress
cp /vagrant/wordpress /etc/nginx/sites-available/
cp /vagrant/wp-config.php /var/www/html/wordpress/
sudo ln -s /etc/nginx/sites-available/wordpress /etc/nginx/sites-enabled/
service nginx restart