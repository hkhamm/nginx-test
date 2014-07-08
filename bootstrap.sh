#!/bin/bash

sudo apt-get update
sudo apt-get install python -y
sudo apt-get install python-pip -y
sudo apt-get install python-dev -y
sudo pip install virtualenv

virtualenv uwsgi-tutorial
cd uwsgi-tutorial
source bin/activate
cd ..

sudo pip install Django
django-admin.py startproject mysite
cd mysite

sudo pip install uwsgi
sudo apt-get install nginx -y

cp /vagrant/files/uwsgi_params /vagrant/mysite
cp /vagrant/files/mysite_nginx.conf /vagrant/mysite

sudo ln -s /vagrant/mysite/mysite_nginx.conf /etc/nginx/sites-enabled/
