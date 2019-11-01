git clone https://github.com/wanghy96/raspi_jupyter.git
sudo pip3 install --upgrade jupyter-core
sudo pip3 install --upgrade jupyter-client
sudo pip3 install requests bs4 lxml xlwt xlrd django yagmail jupyter pyecharts
echo "export PATH=$PATH:~/.local/bin" | sudo tee -a /etc/profile
source /etc/profile
jupyter notebook --generate-config
sudo cp raspi_jupyter/jupyter_notebook_config.py ~/.jupyter/jupyter_notebook_config.py
jupyter notebook password
sudo cp raspi_jupyter/rc.local /etc/
sudo chmod +x /etc/rc.local
sudo cp raspi_jupyter/dhcpcd.conf /etc/
sudo cp raspi_jupyter/speak_ip.py /var/speak_raspi_ip/
echo 'finished!'
