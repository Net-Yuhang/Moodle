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
	sudo apt-get install graphviz;
	sudo apt install aspell;
	sudo apt install ghostscript;
	sudo apt install clamav;
	sudo apt install php7.4-pspell;
	sudo apt install php7.4-curl;
	sudo apt install php7.4-gd;
	sudo apt install php7.4-intl;
	sudo apt install php7.4-mysql;
	sudo apt install php7.4-xml;
	sudo apt install php7.4-xmlrpc;
	sudo apt install php7.4-ldap;
	sudo apt install php7.4-zip;
	sudo apt install php7.4-soap;
	sudo apt install php7.4-mbstring;
	sudo apt install git;
	sudo systemctl restart apache2;
	cd /opt;
	sudo git clone git://git.moodle.org/moodle.git;
	cd moodle;
	sudo git branch -a;
	sudo git branch --track MOODLE_400_STABLE origin/MOODLE_400_STABLE;
	sudo git checkout MOODLE_400_STABLE;
	sudo cp -R /opt/moodle /var/www/html/;
	sudo chmod -R 0777 /var/www/html/moodle;
	sudo mkdir /var/moodledata;
	sudo chown -R www-data /var/moodledata;
	sudo chmod -R 0777 /var/moodledata;
	sudo mysql -u root -p;
	
}
ins


echo "Install Finish, thanks for using"
