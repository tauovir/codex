## Collect Development Code and it dependencies:
python manage.py collectstatic. Collect media files
Take requirements.txt dependencies
Take database backup

# Installation on Ubuntu Server:

### Clone Git repo and Update packages:
mkdir codebook && cd codebook
git clone https://github.com/tauovir/codex.git .
sudo apt-get update
sudo apt-get install python3-pip
sudo pip3 install virtualenv
virtualenv venv
source venv/bin/activate
cd codex
pip install -r requirements.txt
create .env file

##Install Postgres12
sudo apt update
### Install required package
sudo apt -y install vim bash-completion wget
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt update
sudo apt -y install postgresql-12 postgresql-client-12
systemctl status postgresql.service
sudo su - postgres
psql
### Change the password of postgres role
\password postgres
### Create Database
CREATE DATABASE codebook_db;
### Connect To database
\c codebook_db
### Exit from plsq and restore project database
/usr/bin/pg_restore --host "localhost" --port "port" --username "<username>" --dbname "<database_name>" --verbose "database_name.sql"


### Install Tmux
sudo apt-get update
sudo apt-get install tmux

### Install NGINX
sudo apt update
sudo apt install nginx
cd /etc/nginx/sites-available
### Configure nginx file: check nginx file in this directory
  
### Finnaly Runserver from codebook/codex
  /home/ubuntu/codebook/venv/bin/gunicorn codex.wsgi:application --bind 0.0.0.0:8000 --workers 2
