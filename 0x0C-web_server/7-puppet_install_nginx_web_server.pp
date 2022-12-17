# Install Nginx web server (w/ Puppet)
# Similar to task 4-not_found_page_404

exec { 'server configuration':
  provider => shell,
  command  => 'sudo apt-get -y update; sudo apt-get -y install nginx; echo "Hello World!" > /var/www/html/index.html; sudo sed -i "/server_name _;/a location /redirect_me {\\n\\treturn 301 https://youtube.com;\\n\\t}\\n" /etc/nginx/sites-available/default; sudo service nginx restart',
}