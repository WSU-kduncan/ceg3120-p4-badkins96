# CEG 3120 - Project 4 - The Monster of Monsters
Project Overview: In this project, we experiment with Docker, GitHub actions, DockerHub, and AWS CLI. 

We create a Dockerfile and have our index.html page run on a server through the use of Docker. In the next part, we install and familiarize ourselves with AWS CLI (in my case I took the alternative route since I was a bit late getting into it due to issues with my WSL2). We then use DockerHub to create a public repository and set GitHub Secrets, and then set up GitHub Actions workflow to build/push the docker image to DockerHub. 

# Milestone 1: Create dockerfile and docker container for my website
- I installed Docker Desktop and followed the instructions to install onto my local machine (originally using Ubuntu).
- I tried to install WSL2 and copied over all of my folders from my original WSL1, but nothing would work with Docker for some reason. Discussed it with Professor Duncan and we could not find out how to troubleshoot the issue and decided to use a workaround using the Windows PowerShell. Copied my GitHub project repository to that and got docker working properly from there. 
- Created Dockerfile as seen in my repository. Help given from Professor Duncan's lecture videos.
-Created a basic index.html file (also in the repository) and put it in the "html" folder. 

