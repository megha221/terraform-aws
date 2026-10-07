#!/bin/bash

apt update -y
apt install nginx
systemctl enable nginx
systemctl start nginx
