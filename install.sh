sudo apt install php7.2 php7.2-curl php7.2-common php7.2-cli php7.2-mysql php7.2-mbstring php7.2-fpm php7.2-xml php7.2-zip -y
sudo apt install nginx -y
sudo apt install unzip curl -y
sudo apt install mariadb-server -y
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

sudo mysql_secure_installation

cd /var/www/
composer create-project --prefer-dist laravel/laravel laravel
sudo composer create-project --prefer-dist laravel/laravel laravel
sudo cp laravel.conf /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/laravel.conf /etc/nginx/sites-enabled/
sudo rm /etc/nginx/sites-available/default
sudo rm /etc/nginx/sites-enabled/default
sudo service nginx restart
nginx -t
sudo chown -R www-data:www-data /var/www/laravel/
sudo chmod -R 755 /var/www/laravel/