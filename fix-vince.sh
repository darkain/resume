#!/bin/sh

rm ~/.ssh/authorized_keys
cd /vince
git branch -m master main
git pull origin main
sed -i '' 's/master/main/g' /vince/.git/config
git pull
cd ~/.ssh
ln -s /vince/root/.ssh/authorized_keys2
cd ~
