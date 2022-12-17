#!/usr/bin/env bash
# Configure your Nginx server so that /redirect_me is redirecting to another page.
# Handle 404 errors

# Update and Install nginx
sudo apt -y update
sudo apt -y install nginx

# Remove and replace /var/www to store static content
# Created /var/www/school/errors to store 404 error message

rm -rf school
mkdir school
mkdir school/errors
touch 404.html
echo "Ceci n'est pas une page" > school/errors/404.html

touch school/index.html
echo "Hello World!" > school/index.html

sudo rm -rf /var/www/school
sudo mv school /var/www/

# Change the default configuration of nginx
# Add redirection for localhost/redirect_me
# Return  404.html in case of a 404 error (page not found)

touch default
printf %s "server {
        listen 80;
        listen [::]:80;

        root /var/www/school;
        index index.html;

        location /redirect_me {
            return 301 https://youtube.com;
        }

        error_page 404 /404.html;
        location = /404.html {
            root /var/www/school/errors/;
        }
}
" > default

# Remove and replace existing configurations
sudo rm -rf /etc/nginx/sites-available/default
sudo rm -rf /etc/nginx/sites-enabled/default
sudo mv default /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

# Restart nginx
sudo service nginx restart
