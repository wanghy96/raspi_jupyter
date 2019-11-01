#!/bin/bash
sudo pip3 install --upgrade jupyter-core
sudo pip3 install --upgrade jupyter-client
sudo pip3 install requests bs4 lxml xlwt xlrd django yagmail jupyter pyecharts
echo "export PATH=$PATH:~/.local/bin" | sudo tee -a /etc/profile
source /etc/profile
jupyter notebook --generate-config
sudo cp jupyter_notebook_config.py ~/.jupyter/jupyter_notebook_config.py
yes|jupyter notebook password
sudo cp rc.local /etc/
sudo chmod +x /etc/rc.local
sudo cp dhcpcd.conf /etc/
sudo cp speak_ip.py /var/speak_raspi_ip/
echo 'finished!'
