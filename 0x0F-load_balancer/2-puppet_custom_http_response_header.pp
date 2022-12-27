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
