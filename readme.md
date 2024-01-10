Steps I followed:
## Task 1
1.1: Open VM with Ubuntu 22.04 version and perform
<code>	
# change directory 
	cd ~/Desktop/DevOps/
	# Create a new directory named “intuji-devops-internship-challenge” 
	 mkdir intuji-devops-internship-challenge
	 cd intuji-devops-internship-challenge
</code>
1.2: Inside the directory 
<code>	
# initialized the git in that repository (Note: I already installed git)
	git init
# Create a file using the following command and write the required script to download docker using the help of the docker official page from where I observe the commands used in Ubuntu for download. And then save written contents (esc + :wq for vim)
	vim dockerinstaller.sh
	# Perform required git commands after each step as(for example):
	git add .
	git commit –m “<commit-message>”
	 git status    # used this to check the status of my working branch
  </code>
1.3: It’s very important to permit to .sh file to execute 
	<code> chmod +x dockerinstaller.sh
	 ./dockerinstaller.sh  # to run the script
	</code>


## Task 2
2.1: Cloned the given GitHub repository using the command
<code> git clone <given-repo-url>   
# replaced <given-repo-url> with https://github.com/silarhi/php-hello-world.git </code>
2.1.1: Creating Dockerfile for building a docker image of the cloned application.
<code> 
vim Dockerfile

</code>
