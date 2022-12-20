#! /bin/bash
## author:Yuhang Yue
## This is for Moodle installation

ins(){
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
