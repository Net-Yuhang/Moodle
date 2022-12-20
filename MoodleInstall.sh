#! /bin/bash
## author:Yuhang Yue
## This is for Moodle installation

date
echo "Welcome Using The Moodle Installation"
echo "Author:Yuhang Yue"
echo " "
echo "Update, continue press y"
read y
update()
{
	sudo apt-get update
}
update
echo "Update finish"
echo "Install Moodle -- continue, press y"
read y
ins()
{
	sudo apt-get install apache2 mysql-client mysql-server php7.4 libapache2-mod-php;
	sudo a2dismod php8.1;
	sudo a2enmod php7.4;
	sudo apt install software-properties-common;
	sudo add-apt-repository ppa:ondrej/php;
	sudo apt update;
	sudo apt install graphviz aspell ghostscript clamav php7.4-pspell php7.4-curl php7.4-gd php7.4-intl php7.4-mysql php7.4-xml php7.4-xmlrpc php7.4-ldap php7.4-zip php7.4-soap php7.4-mbstring;
	sudo systemctl restart apache2;
	cd /opt;
	sudo git clone git://git.moodle.org/moodle.git;
	cd moodle;	
}
ins


echo "Install Finish, thanks for using"
