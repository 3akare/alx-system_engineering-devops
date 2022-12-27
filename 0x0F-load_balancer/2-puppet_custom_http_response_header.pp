# Creating a file at /tmp/school with puppet
file {'~/default':
mode    =>'0777',
content =>  '"server {
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
}
"',
}
