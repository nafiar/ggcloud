#! /usr/bin/env bash
apt-get update

#install apache dan php
apt-get install -y apache2
apt-get install -y php7.0 libapache2-mod-php7.0

#setting apache2
VHOST=$(cat << EOF
<VirtualHost *:80>
	DocumentRoot "/var/www"
	<Directory "/var/www">
		AllowOverride All
		Require all granted
	</Directory>
</VirtualHost>
EOF
)
echo "${VHOST}" > /etc/apache2/sites-available/000-default.conf

sudo a2enmod rewrite

service apache2 restart
