#! /bin/bash
## author:Yuhang Yue
## This is for Moodle installation

ins(){
	sudo cp -R /opt/moodle /var/www/html/;
	sudo chmod -R 0777 /var/www/html/moodle;
	sudo mkdir /var/moodledata;
	sudo chown -R www-data /var/moodledata;
	sudo chmod -R 777 /var/moodledata;
	sudo chmod -R 0755 /var/www/html/moodle;
}
ins

echo "Config the MySQL, continue, press y"
read y
sql(){
	sudo mysql -u root -p
}
sql


