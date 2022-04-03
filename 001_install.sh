BITNAMI_LINK=https://bitnami.com/redirect/to/1992580/bitnami-lampstack-7.4.28-0-linux-x64-installer.run
LAMP_FILE=bitnami-lampstack-7.4.28-0-linux-x64-installer.run
sudo apt-get update && sudo apt-get upgrade -y

sudo mkswap /dev/xvdf
sudo swapon /dev/xvdf

sudo echo '/dev/xvdf none swap sw 0 0' | sudo  tee -a /etc/fstab 
 
mkdir downloads && cd downloads && curl -L -O $BITNAMI_LINK && chmod +x LAMP_FILE
pwd
cd downloads && sudo $LAMP_FILE  --debuglevel 4  --enable-components varnish,laravel,phpmyadmin  --base_user_name vikram  --base_mail vikram2327@gmail.com --base_user vikram --base_password 123456  --mysql_password 123456

 sudo ./bitnami-lampstack-7.4.28-0-linux-x64-installer.run --mode text --debuglevel 4  --enable-components varnish,laravel,phpmyadmin  --base_user_name vikram  --base_mail vikram2327@gmail.com --base_user vikram --base_password 123456  --mysql_password 123456
 
