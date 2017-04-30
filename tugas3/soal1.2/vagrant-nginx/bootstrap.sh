sudo apt-get update
sudo apt-get install -y nginx

echo "Copy nginx default setting"

sudo cp /var/www/setting/default /etc/nginx/sites-available/

sudo service nginx restart
