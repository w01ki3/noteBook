########################################################

//sorgusuz klasör sil
rm -fr foldername

########################################################

//klasörü tar olarak sıkıştır
tar -zcvf public_html.tar.gz html

########################################################

//public_html.tar.gz dosyasını dizine aç
tar -zxvf public_html.tar.gz

########################################################

//sunucudaki dosyayı diğer uzak sunucuya kopyala

scp /var/www/public_html.tar.gz userName@xxx.xx.xx.xx:/home/username/domains/xxx.com
scp /var/www/html.tar.gz userName@xxx.xx.xx.xx:/home/username/domains/xxx.com/public_html
scp /var/www/dbbkp20201108.sql userName@xxx.xx.xx.xx:/home/username/domains/xxx.com

########################################################

//root kullanıcısına ait zamanlanmış görevleri listele
crontab -u root -l

########################################################

//zamanlanmış görevlerin bulunduğu klasör
cd /var/spool/cron

########################################################

//windows tan ssh a port belirterek dosya kopyala
pscp -P 22 D:\xampp\htdocs\html.zip userName@xx.xx.xx.xx:/var/www/

########################################################

//sshtan windows a
pscp.exe username@xx.xx.xx.xx:/var/www/dbbkp20201108.sql D:\privateJobs\downloads

########################################################

//linkle
ln -s /etc/apache2/sites-available/xxx.com.vhost /etc/apache2/sites-enabled/xxx.com.vhost
ln -s /etc/apache2/sites-available/xxx.com.vhost /etc/apache2/sites-enabled/xxx.com.vhost

########################################################

//password değiştir
passwd

########################################################

//kullanıcı sil
deluser --remove-home test
deluser username

########################################################

//kullanıcıları görüntüle
cat /etc/passwd
cat /etc/shadow

########################################################

//xxx.log dosyasını canlı izle
tail -f xxx.log

########################################################

//klasöre kullanıcı yetkisi ver
useradd -d /var/www/clients/client7/web28 username
useradd -d /var/www/clients/client7/web28 username -s /bin/bash

########################################################

//mysql deki tüm kullanıcıların şifresini değiştir.
UPDATE mysql.user SET PASSWORD=PASSWORD('xxxxx')

########################################################

//klasörlere 755 bas
find * -type d -exec chmod 755 {} +

########################################################

//dosyalara 644 bas
find * -type f -exec chmod 644 {} +

########################################################

//. ile baslayan dosyalara 644 bas
find .* -type f -exec chmod 644 {} +

########################################################

//username kullanıcısını client7 grubuna ekle
usermod -a -G client7 username

########################################################

//username kullanıcısını sahip yap
chown -R username *

########################################################

//username kullanıcısını .* dosyalarında sahip yap
chown -R username .*

########################################################

//dosya ara
find -name *.pdf -type f

########################################################

//ssh ayarları
nano /etc/ssh/sshd_config
service sshd restart

########################################################

//mysql backup
mysqldump -p -h localhost -u kullaniciAdi databaseAdi > yedekDosyasi.sql

########################################################

//yeni pencere aç
screen
shift+ctrl+A+C
shift+ctrl+A+N

########################################################

//xxx isminde çalışan uygulamaları görüntüle
ps -aux | grep xxxx

########################################################

//uygulamayı supervisor olarak çalıştır
supervisor uygulama

########################################################

//ssh bağlantılarını ip ile kısıtla
/etc/hosts
sshd sshd1 sshd2 : 127.0.0.1 : ALLOW
sshd sshd1 sshd2 : xx.xx.xx.xx : ALLOW
sshd sshd1 sshd2 : ALL : DENY

########################################################

//timezone ayarı
tzselect

#####

//grafik arayüzlü kurulum
dpkg-reconfigure tzdata

#####

//sadece saat ayarı
date -s "22:43:10"

#####

timedatectl status
timedatectl set-timezone UTC

########################################################

//ssl sertifika yenileme
certbot certificates
certbot renew --force-renewal
certbot -d damainname.com,www.damainname.com --force-renewal
systemctl restart httpd

########################################################


