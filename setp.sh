command: certonly --webroot --webroot-path=/var/www/certbot --email guisheng.xiong@gmail.com --agree-tos --no-eff-email --staging -d xiongguisheng.com -d www.xiongguisheng.com

docker-compose up -d

command: certonly --webroot --webroot-path=/var/www/certbot --email guisheng.xiong@gmail.com --agree-tos --no-eff-email -d xiongguisheng.com -d www.xiongguisheng.com


docker-compose up --force-recreate --no-deps certbot

curl -sSLo nginx-conf/options-ssl-nginx.conf https://raw.githubusercontent.com/certbot/certbot/master/certbot-nginx/certbot_nginx/_internal/tls_configs/options-ssl-nginx.conf

docker-compose up -d --force-recreate --no-deps webserver


chmod +x ssl_renew.sh

sudo crontab -e


0 12 * * * /root/wordpress/ssl_renew.sh >> /var/log/cron.log 2>&1