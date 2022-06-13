<p align="center">
    <img src="vkIcon.png" style="width: 100px;">
    <br>
    noteBook | w01ki3
</p>


### bashNote
##### folder delete
```
rm -rf foldername
```
##### folder compress
```
tar -zcvf public_html.tar.gz html
```
##### unpack tar file to directory
```
tar -zxvf public_html.tar.gz
```
##### copy file from server to other remote server
```
scp /var/www/public_html.tar.gz userName@xxx.xx.xx.xx:/home/username/domains/xxx.com
```
##### List root user scheduled tasks
```
crontab -u root -l
```
##### folder with scheduled tasks
```
cd /var/spool/cron
```
##### copy file from windows to linux by specifying port
```
pscp -P 22 D:\xampp\htdocs\html.zip userName@xx.xx.xx.xx:/var/www/
```
##### download from linux to windows
```
pscp.exe username@xx.xx.xx.xx:/var/www/dbbkp20201108.sql D:\privateJobs\downloads
```
##### link
```
ln -s /etc/apache2/sites-available/xxx.com.vhost /etc/apache2/sites-enabled/xxx.com.vhost
```
##### password change
```
passwd
```
##### delete user
```
deluser --remove-home test
deluser username
```
##### show users
```
cat /etc/passwd
cat /etc/shadow
```
##### watch xxx.log file live
```
tail -f xxx.log
```
##### give user permission to the folder
```
useradd -d /var/www/clients/client7/web28 username
useradd -d /var/www/clients/client7/web28 username -s /bin/bash
```
##### Change password of all users in mysql.
```
UPDATE mysql.user SET PASSWORD=PASSWORD('xxxxx')
```
##### press 755 or 644 to folders
```
find * -type d -exec chmod 755 {} +
find * -type f -exec chmod 644 {} +
```
##### press 644 to files that start with a [.]
```
find .* -type f -exec chmod 644 {} +
```
##### add username user to client7 group
```
usermod -a -G client7 username
```
##### Make username owner of files
```
chown -R username *
chown -R username .*
```
##### search pdf file
```
find -name *.pdf -type f
```
##### ssh settings
```
nano /etc/ssh/sshd_config
service sshd restart
```
##### mysql backup
```
mysqldump -p -h localhost -u kullaniciAdi databaseAdi > yedekDosyasi.sql
```
##### open new window
```
screen
shift+ctrl+A+C
shift+ctrl+A+N
```
##### View running apps with name xxx
```
ps -aux | grep xxxx
```
##### run appname as supervisor
```
supervisor appname
```
##### restrict ssh connections by ip - at [/etc/hosts]
```
sshd sshd1 sshd2 : 127.0.0.1 : ALLOW
sshd sshd1 sshd2 : xx.xx.xx.xx : ALLOW
sshd sshd1 sshd2 : ALL : DENY
```
##### timezone setting
```
tzselect
```
##### graphical timezone setup
```
dpkg-reconfigure tzdata
```
##### clock setting only
```
date -s "22:43:10"
```
##### time status & settings 
```
timedatectl status
timedatectl set-timezone UTC
```
##### ssl certificate renewal
```
certbot certificates
certbot renew --force-renewal
certbot -d damainname.com,www.damainname.com --force-renewal
systemctl restart httpd
```
##### Create key and authorize server for github ssh
```
//1 - create ssh key
ssh-keygen -t rsa -b 4096 -C "mail@mail.com"
//2 - run in background
eval "$(ssh-agent -s)"
//3 - give a permission
ssh-add .ssh/id_rsa
//4 - view pub
cat .ssh/id_rsa.pub
//5 - copy what is displayed and add from there
https://github.com/settings/keys
```