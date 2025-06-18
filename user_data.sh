#!/bin/bash

# Update system
sudo yum update -y

# Install Python 3, pip, and git
sudo yum install -y python3 git

# Upgrade pip
sudo pip3 install --upgrade pip

# Clone GitHub repo
cd /home/ec2-user
git clone https://github.com/noyaams1/pokeapi_part2
cd pokeapi_part2
# Installing requirements
pip3 install -r requirements.txt

# Set permissions so ec2-user owns the files
sudo chown -R ec2-user:ec2-user /home/ec2-user/pokeapi_part2

# Creating a welcome message
echo 'echo "Welcome to the Pokemon Drawer! To start the app, type: python3 main.py"' >> /home/ec2-user/.bashrc
echo 'cd ~/pokeapi_part2 && python3 main.py' >> /home/ec2-user/.bashrc