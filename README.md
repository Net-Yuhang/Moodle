# Moodle
Step 1:         
        run MoodleInstall.bash  
                
Step 2:  
        cd /opt         
        sudo git clone git://git.moodle.org/moodle.git  
        cd moodle       
        sudo git branch -a      
        sudo git branch --track MOODLE_400_STABLE origin/MOODLE_400_STABLE      
        sudo git checkout MOODLE_400_STABLE 
                
Step 3:         
        run FinalActions.bash   
                
Step 4:         
        CREATE DATABASE moodle DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;        
        CREATE USER 'moodle-user'@'localhost' IDENTIFIED BY 'password'; 
        GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,CREATE TEMPORARY TABLES,DROP,INDEX,ALTER ON moodle.* TO 'moodle-user'@'localhost';     
        quit;   
                
        
After above steps, a basic Moodle has been installed.   
