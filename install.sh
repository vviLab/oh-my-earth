#!/bin/bash
#
#-*- coding: utf-8 -*-
#
# Created by ujnzxw <ujnzxw@gmail.com>
# Revised by vvilab <cq_wu@foxmail.com>

ROOT=$( cd "$( dirname "$0" )" && pwd )

sudo pip2 install pillow pytz tzlocal appdirs
sudo ln -s "${ROOT}/run.py" "/usr/local/bin/oh-my-earth"
crontab -l > /tmp/crontab.bak
echo "*/10 * * * * /usr/local/bin/oh-my-earth" >> /tmp/crontab.bak
crontab /tmp/crontab.bak
/usr/local/bin/oh-my-earth