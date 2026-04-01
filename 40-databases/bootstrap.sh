#! /bin/bash

dnf install ansible -y
ansible-pull -U https://github.com/Bhargav-Dodda-07/ansible-roboshop-roles-tf.git -e component="mongodb" main.yaml