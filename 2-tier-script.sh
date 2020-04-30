sudo apt update
sudo apt -y upgrade
sudo apt install -y apache2 wget unzip
sudo apt-get install -y mysql-server
sudo apt install curl
sudo apt install -y php libapache2-mod-php php-mysql
sudo apt install -y curl php-cli php7.2-xml php-mbstring git
sudo curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
sudo composer require google/cloud-secret-manager --working-dir=/var/www/html
sudo composer require guzzlehttp/guzzle --working-dir=/var/www/html
cd /var/www/html/
sudo rm index.html
sudo wget https://raw.githubusercontent.com/ahmadzahoory/gcp-wip/master/gcp-2-tier-code.zip
sudo unzip gcp-2-tier-code.zip
sudo systemctl restart apache2.service

