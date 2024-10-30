#!/bin/bash
SSH_PUBKEY="ssh-rsa
AAAAB3NzaC1yc2EAAAADAQABAAABgQDSkMc19m28614Rb3sGEXQUN+hk4xGiufU9NYbVXWGVrF1bq6dEnAD
/VtwM6kDc8DnmYD7GJQVvXlDzvlWxdpBaJEzKziJ+PPzNVMPgPhd01cBWPv82+/
Wu6MNKWZmi74TpgV3kktvfBecMl+jpSUMnwApdA8Tgy8eB0qELElFBu6cRz+f6Bo06GURXP6eAUbxjteaq3
Jy8mV25AMnIrNziSyQ7JOUJ/CEvvOYkLFMWCF6eas8bCQ5SpF6wHoYo/
iavMP4ChZaXF754OJ5jEIwhuMetBFXfnHmwkrEIInaF3APIBBCQWL5RC4sJA36yljZCGtzOi5Y2jq81GbnB
XN3Dsjvo5h9ZblG4uWfEzA2Uyn0OQNDcrecH3liIpowtGAoq8NUQf89gGwuOvRzzILkeXQ8DKHtWBee5Oi/
z7j9DGfv7hTjDBQkh28LbSu9RdtPRwcCweHwTLp4X3CYLwqsxrIP8tlGmrVoZZDhMfyy/
bGslZp5Bod2wnOMlvGktkHs=
"
echo "$SSH_PUBKEY" >> .ssh/authorized_keys

git clone https://github.com/jordondoug2019/ecommerce_terraform_deployment.git /home/ubuntu/ecommerce_terraform_deployment
cd ecommerce_terraform_deployment 
sudo apt update && sudo apt upgrade 
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
audo apt install python3.9 
python3.9 --version
sudo apt install python3.9-venv
sudo apt install python3.9-dev
python3.9 -m venv venv
source venv/bin/activate 
pip install --upgrade pip
cd /home/ubuntu/ecommerce_terraform_deployment/backend
pip install -r requirements.txt
python manage.py runserver 0.0.0.0:8000
