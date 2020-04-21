sudo rm /etc/nginx/sites-enabled/default
sudo rm /etc/nginx/sites-available/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo ln -sf /web/etc/ngnix.conf /etc/nginx/sites-available/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/hello.py /etc/gunicorn.d/hello.py

sudo /etc/init.d/gunicorn restart
