# Inception

## Overview 
Inception is a deployment project, designed to impart skills in setting up a robust and secure infrastructure using Docker. Focuses on creating a secure and efficient infrastructure using Docker. Key objectives include setting up NGINX, 
WordPress, and MariaDB in isolated containers, implementing strict security measures, and configuring a domain for entry. Skills honed include Docker Compose orchestration, secure environment variable handling, 
and adherence to best practices for containerized applications. The project showcases proficiency in architecting and securing Docker-based solutions.

## Infrastructure Specifications 
This project introduces a set of meticulous specifications to guide the deployment process. From system and network requirements to software configurations and security protocols, 
each specification is crafted to ensure a secure, efficient, and standardized deployment. Emphasizing best practices, these specifications pave the way for acquiring essential skills in Docker orchestration, 
networking, security, and system administration.

### 💻 System Specification
- Use a virtual machine for the project.
- Specify a version of the Docker Engine for compatibility with Docker Compose.
- Ensure the installation of Docker and Docker Compose on the virtual machine.
- Designate volumes to be available in the /home/login/data folder of the host machine, replacing "login" with the user's login.

### 🐳 Docker Infrastructure Specification
- Set up a small infrastructure using Docker Compose on a virtual machine.
- Each Docker image should have the same name as its corresponding service.
- Run each service in a dedicated container.
- Choose either the penultimate stable version of Alpine or Debian for building containers.
- Write Dockerfiles for each service and call them in the docker-compose.yml using a Makefile.
- Build Docker images locally, and avoid pulling ready-made images or using DockerHub (except for Alpine/Debian).
- Configure containers to restart in case of a crash.

### 🌐 Network Specification
- Establish a Docker network to connect your containers.
- Prohibit the use of "network: host," "--link," or "links:" in the docker-compose.yml file.
- Include the "network" line in the docker-compose.yml file.

### 🛠️ Software Specification
- Set up a Docker container with NGINX configured for TLSv1.2 or TLSv1.3 only.
- Create a Docker container containing WordPress and php-fpm (configured and installed) without NGINX.
- Establish a Docker container with MariaDB, excluding NGINX.
- Create a volume for the WordPress database.
- Set up a second volume for the WordPress website files.

### 🗃️ Database Specification
- Configure the WordPress database to have two users, with one designated as the administrator.
- Ensure that the administrator's username does not contain "admin" or "Admin" and avoids variations like "administrator" or "Administrator" (e.g., admin, administrator, Administrator, admin-123, etc.).

### 🔒 Domain and SSL Specification
- Configure your domain name to point to your local IP address.
- The domain name should be login.42.fr, customized with your own login.
- If your login is "wil," wil.42.fr should redirect to the IP address associated with wil's website.
- Restrict entry into your infrastructure to the NGINX container through port 443 only, utilizing the TLSv1.2 or TLSv1.3 protocol.

### 🔐 Security Specification
- Avoid using "hacky patches" like 'tail -f' when running Docker containers, as containers are not virtual machines.
- Understand how daemons work and consider whether using them is a good approach for your setup.
- Avoid starting containers with commands that run infinite loops. This includes entry point commands or scripts with prohibited patches like 'tail -f,' 'bash,' 'sleep infinity,' and 'while true.'
- Avoid using the latest tag for Docker images.
- Do not include passwords in your Dockerfiles.
- Use environment variables, and it's mandatory to employ them.
- Consider using a .env file for storing environment variables; place it at the root of the srcs directory.
- Save credentials, API keys, and environment variables locally in a .env file.
- Ensure that the .env file is ignored by Git to prevent publicly storing sensitive information.
- Avoid publicly storing credentials, as this could result in project failure due to security concerns.

## Docker Infrastructure Diagram 
![](https://github.com/Saxsori/inception/blob/main/readme-assist/2.png)

## Project Directory Structure

An example of the expected directory structure

``` ruby
root/
│
├── src/
│   ├── requirements/
│   │   ├── bonus/
│   │   │   ├── adminer/
│   │   │   │   ├── conf/
│   │   │   │   ├── Dockerfile
│   │   │   │   └── tools/
│   │   │   ├── ftp/
│   │   │   │   ├── conf/
│   │   │   │   ├── Dockerfile
│   │   │   │   └── tools/
│   │   │   ├── redis/
│   │   │   │   ├── conf/
│   │   │   │   ├── Dockerfile
│   │   │   │   └── tools/
│   │   │   ├── service/
│   │   │   │   ├── conf/
│   │   │   │   ├── Dockerfile
│   │   │   │   └── tools/
│   │   │   └── static_file/
│   │   │       ├── conf/
│   │   │       ├── Dockerfile
│   │   │       └── tools/
│   │   ├── mariadb/
│   │   │   ├── conf/
│   │   │   ├── Dockerfile
│   │   │   └── tools/
│   │   ├── nginx/
│   │   │   ├── conf/
│   │   │   ├── Dockerfile
│   │   │   └── tools/
│   │   └── wordpress/
│   │       ├── conf/
│   │       ├── Dockerfile
│   │       └── tools/
│   ├── .env
│   └── docker-compose.yml
└── Makefile

```
## Bouns 

### 🐳  Docker Infrastructure 
- Write Dockerfiles for each extra service.

### 🚀 Recommended Services
- Optimize WordPress with Redis cache.
- Set up an FTP server container linked to the WordPress volume.
- Create a non-PHP static website.
- Configure and implement Adminer for database management.
- One more service of your choice.

### 🌐 Network Specification
- Open additional ports for extra services.

### 📊 Evaluation Criteria
- Assess the bonus section only if the mandatory part is perfected.
- Justify the choosen Service.









