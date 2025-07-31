#!/bin/bash

echo "[web]" > inventory.ini
terraform output -raw web_server_ip | xargs -I {} echo "{} ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/my-key.pem" >> inventory.ini

echo "[monitor]" >> inventory.ini
terraform output -raw monitor_server_ip | xargs -I {} echo "{} ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/my-key.pem" >> inventory.ini
