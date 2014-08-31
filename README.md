Ubuntu & openssh-server
=================================================

###Usage 
````bash
docker run -d akyshr/ubuntu-sshd
````

###Account
````
 USER : ubuntu
 PASSWD : ubuntu
````
###Change Language 

 docker run -d -e "LANG=ja_JP.UTF-8" -e "TZ=JST-9" akyshr/ubuntu-mate-tigervnc


###Configuration Parameters
Below is the list of parameters that can be set using environment variables.
-**USER**: user account name. Defaults to 'ubuntu'.
-**PASSWORD** : user password. Defaults to 'ubuntu'.
-**LANG**   : Language. Defaults to 'en_US.UTF-8'.
-**TIMEZONE** : timezone. Defaults to 'Etc/UTC'
