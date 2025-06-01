# CLO835---Assignment-1
Install the required MySQL package

sudo apt-get update -y sudo apt-get install mysql-client -y

Running application locally

pip3 install -r requirements.txt sudo python3 app.py

Building and running 2 tier web application locally

Building mysql docker image

docker build -t my_db -f Dockerfile_mysql . 


Building application docker image

docker build -t my_app -f Dockerfile . 

Running mysql

docker run -d -e MYSQL_ROOT_PASSWORD=pw  my_db

Get the IP of the database and export it as DBHOST variable

docker inspect <container_id>
