# CEG 3120 - Project 4 - The Monster of Monsters
Project Overview: In this project, we experiment with Docker, GitHub actions, DockerHub, and AWS CLI. 

We create a Dockerfile and have our index.html page run on a server through the use of Docker. In the next part, we install and familiarize ourselves with AWS CLI (in my case I took the alternative route since I was a bit late getting into it due to issues with my WSL2). We then use DockerHub to create a public repository and set GitHub Secrets, and then set up GitHub Actions workflow to build/push the docker image to DockerHub. 

# Part 1: Create dockerfile and docker container for my website
- I installed Docker Desktop and followed the instructions to install onto my local machine (originally using Ubuntu).
- I tried to install WSL2 and copied over all of my folders from my original WSL1, but nothing would work with Docker for some reason. Discussed it with Professor Duncan and we could not find out how to troubleshoot the issue and decided to use a workaround using the Windows PowerShell. Copied my GitHub project repository to that and got docker working properly from there. 
- Created Dockerfile as seen in my repository. Help given from Professor Duncan's lecture videos.
-Created a basic index.html file (also in the repository) and put it in the "html" folder. 
- Image of Docker running my index file on port 2000 [image 1]

# Part 2: What Makes a Project a Monster...AKA GitHub Actions and DockerHub
- Created DockerHub account with the same username as GitHub
- With the free version of DockerHub, you simple click "Repositories" at the top of the site, and it will take you to a page where you can "Create Repository", then you just create the name, and can give a description about what the repository is. It is set to Public instead of Private for the purposes of these tests.
- Created Public Repository in DockerHub [image 2]
- Ran AWS CLI on PowerShell [image 3]
- AWS CLI running on DockerHub [image 4]
- Could not run "aws configure" from the directions followed, I can't tell if it is some issue related to PowerShell because only the first few commands through the tutorial would work. Image with error code below for "aws configure" below:
- [image 5]
- Created workflow on GitHub using the template given in the Project description. [image 6]
- The first attempt failed because of the build-push being v1, it flagged a warning for Professor Duncan but it made the process fail here for some reason. Changing it to v2 allowed me to successfully run the workflow. [image 7]
