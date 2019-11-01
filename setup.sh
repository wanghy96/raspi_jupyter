sudo pip3 install --upgrade jupyter-core
sudo pip3 install --upgrade jupyter-client
sudo pip3 install requests bs4 lxml xlwt xlrd django yagmail jupyter pyecharts
echo "export PATH=$PATH:~/.local/bin" | sudo tee -a /etc/profile
source /etc/profile
jupyter notebook --generate-config
jupyter notebook password
sudo cp rc.local /etc/
sudo chmod +x /etc/rc.local
sudo chmod 777 /home/pi/jupyter.sh
sudo cp dhcpcd.conf /etc/
echo 'finished!'
