# Install nginx
# Similar to 0-custom_http_response_header
# install nginx and reset the default configurations

exec { 'create file':
provider => shell,
command => 'touch default'}

exec { 'write into default':
provider => shell,
command => 'printf %s "server {
        listen 80;
        listen [::]:80;
        add_header X-Served-By $HOSTNAME;

        root /var/www/school;
        index index.html;

        location /redirect_me {
            return 301 https://youtube.com;
        }

        error_page 404 /404.html;
        location = /404.html {
            root /var/www/school/errors/;
}
" > default'}

exec { 'server configuration':
provider => shell,
command => 'sudo apt -y update; sudo apt -y install nginx; rm -rf school; mkdir school/errors; echo "Ceci n'est pas une page" > school/errors/404.html'
}

exec { 'server configuration':
provider => shell,
command => 'touch school/index/html; echo "Hello World!" > school/index.html; sudo rm -rf /var/www/school; sudo mv school /var/www/;'
}

exec { 'server configuration':
provider => shell,
command => 'sudo rm -rf /etc/nginx/sites-available/default; sudo rm -rf /etc/nginx/sites-enabled/default; sudo mv default /etc/nginx/sites-available/'
}

exec { 'server configuration':}
provider => shell,
command => 'sudo ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default; sudo service nginx restart'
}
