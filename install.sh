
echo "Write name of the project:"
read myproject
if [ "$myproject" == "" ]; then 
	echo "The project name is required, process cancelled."
	exit
fi 
project_folder="$myproject""_deploy"

echo "Write url to use for the git project (example: http://github.com/omaryahir/deploy_django.git):"
read url_git_project
if [ "$url_git_project" == "" ]; then 
	echo "The url git project is required, process cancelled."
	exit
fi 


### Directories 
#echo /webapps/$project_folder
sudo mkdir -p /webapps/$project_folder
sudo chown $(whoami) /webapps/$project_folder

### Git
sudo apt-get install git 

### Get git repository
cd /webapps/$project_folder
git clone $url_git_project  


### MySQL with python
sudo apt-get install mysql-server
sudo apt-get install libmysql++-dev
sudo apt-get install python-dev
sudo apt-get install python-mysqldb
sudo apt-get install build-essential python

### Virtualenv
sudo apt-get install python-virtualenv
virtualenv venv
source venv/bin/activate

### Installing Django utils that I use
pip install django
pip install python-mysql

### Extras
pip install -r pip_requirements.txt









