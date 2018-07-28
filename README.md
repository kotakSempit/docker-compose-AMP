# Docker for Web Development Environment
Configuration for docker application with Apache, PHP and MySQL containers.
* Apache 2.4
* PHP 7.2.2
* MySQL 5.7

## Getting Started (Windows)
Install [Docker Community Edition (CE)](https://store.docker.com/editions/community/docker-ce-desktop-windows). For Docker CE for Windows requires Microsoft Windows 10 Professional or Enterprise 64-bit. For previous versions get [Docker Toolbox](https://docs.docker.com/toolbox/overview/).

Once installation completed, run the Docker For Windows application. [Read More.](https://docs.docker.com/get-started/)


**Working Directory**

    .
    ├── db                     # MySQL data storage
    ├── www                    
    │   └── html               # Root folder for web application
    │       └── index.php      
    ├── docker-compose.yml     # Docker container 
    ├── Dockerfile             # Web server environment
    └── README.md
    
    
**Initialize the Docker Container**

At the terminal, navigate into the root of the working directory and run:
```bash
$ docker-compose up -d
```
It will take some time in the first time request for docker to download the container images and configure itself. The ` -d ` flag is to set the docker to run in background as daemon.
```bash
Starting <directory-name>_db_1 ... done
Starting <directory-name>_webserver_1 ... done
```
Terminal will show output like above to indicates that the server containers are running. Test the installation by going to http://localhost using a browser. By default we should see the output of ` phpinfo() ` function.

**Stopping the Docker Container**

At the terminal, in the root of the working directory where docker-compose.yml file is located, run:
```bash
$ docker-compose stop
```

**MySQL Connection**

We can connect the MySQL container to external MySQL GUI software such as MySQL Workbench. We already mapped the MySQL container port of 3306 to our system 3306 port, so we can use this setting:

* Host: 127.0.0.1
* Username: root
* Password: root
