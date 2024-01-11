Steps I followed:
## Task 1
1.1: Open VM with Ubuntu 22.04 version and perform 
<br><code>cd ~/Desktop/DevOps/
mkdir intuji-devops-internship-challenge
cd intuji-devops-internship-challenge</code>
<br>
1.2: Inside the directory 
- Initialized the git in that repository (Note: I already installed git)
<br><code>git init </code><br>
- Create a file using the following command and write the required script to download docker using the help of the docker official page from where I observe the commands used in Ubuntu for download. And then save written contents (esc + :wq for vim)
<br><code>vim dockerinstaller.sh<code><br>
- Perform required git commands after each step as(for example):
<br><code>git add . 
git commit –m “<commit-message>”
git status</code><br>

1.3: It’s very important to permit to .sh file to execute 
	<br><code> chmod +x dockerinstaller.sh
	 ./dockerinstaller.sh  # to run the script
	</code><br>

## Task 2
2.1: Cloned the given GitHub repository using the command
<br><code> git clone replace-url </code><br>
2.1.1: Creating Dockerfile for building a docker image of the cloned application.
<br><code> touch Dockerfile </code><br>
After many tries, I try to solve the error using logs and with the help of Google. I build an entry point for a given project where I instantiated class Hello()
<br><code>vim index.php</code><br>
After successfully running a project on a local machine I write a Dockerfile and then build and run it as:
<br><code>docker build -t lokendrabhat/php_project:1.0 . </code><br>
Make sure to check the port available locally using the command <code>sudo lsof -i :80</code> or other commands
<br><code>docker run -d -p 80:80 lokendrabhat/php_project:1.0 </code><br>
Finally pushed to my DockerHub 
<br><code>docker push lokendrabhat/php_project:1.0</code><br>
<img width="100%" alt="dockerhub" src="./output-img/docker_hub_out.jpg"/>

## Task 3
- Downloaded docker-compose
<br><code>sudo apt install -y docker-compose</code><br>
- Check download
<br><code>docker-compose --version</code><br>

- Created a docker-compose file
<br><code>touch docker-compose.yml</code><br>
- write using any editing tools vim, nano, or VS-code (I used VS-code for that)
- To check the docker-compose file
<br><code> docker-compose config </code><br>
- To up the container
<br><code> docker-compose up -d </code><br>

# Output:
<br><img width="100%" alt="docker-compose-output" src="./output-img/docker_compose_out.jpg"/><br>
- To down the container
<br><code> docker-compose down </code><br>

## Task 4
- Installed jenkins with the help of the official jenkins website. For that, first Install Java
<br><code> sudo apt update
sudo apt install fontconfig openjdk-17-jre
java -version </code><br>
- Then Jenkins:
<br><code> sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins </code><br>
- check Jenkins installation
<br><code> jenkins --version
service jenkins status </code><br>

- Now, your Jenkins runs on the default site: http://localhost:8080. Where required configuration is done and plugins are installed
- Here is output
  

