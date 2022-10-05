FROM nginx


COPY ./SSL/vlhost.duckdns.org/fullchain.pem /etc/letsencrypt/live/vlhost.duckdns.org/fullchain.pem

COPY ./SSL/vlhost.duckdns.org/privkey.pem /etc/letsencrypt/live/vlhost.duckdns.org/privkey.pem


COPY ./SSL/vlhost1.duckdns.org/fullchain.pem /etc/letsencrypt/live/vlhost1.duckdns.org/fullchain.pem

COPY ./SSL/vlhost1.duckdns.org/privkey.pem /etc/letsencrypt/live/vlhost1.duckdns.org/privkey.pem



COPY ./nginx.conf /etc/nginx/nginx.conf 

COPY ./backend-not-found.html /var/www/html/backend-not-found.html

COPY ./123.mp3 /home/sites/download/123.mp3

COPY ./Site1/index.html /home/sites/index.html

COPY ./Site2/index.html /home/sites2/index.html 

ADD ./options-ssl-nginx.conf /etc/letsencrypt/options-ssl-nginx.conf

ADD ./ssl-dhparams.pem /etc/letsencrypt/ssl-dhparams.pem

EXPOSE 80

EXPOSE 443