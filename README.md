# CEG 3120 - Project 4 - The Monster of Monsters
Project Overview: In this project, we experiment with Docker, GitHub actions, DockerHub, and AWS CLI. 

We create a Dockerfile and have our index.html page run on a server through the use of Docker. In the next part, we install and familiarize ourselves with AWS CLI (in my case I took the alternative route since I was a bit late getting into it due to issues with my WSL2). We then use DockerHub to create a public repository and set GitHub Secrets, and then set up GitHub Actions workflow to build/push the docker image to DockerHub. 

# Part 1: Create dockerfile and docker container for my website
- I installed Docker Desktop and followed the instructions to install onto my local machine (originally using Ubuntu).
- I tried to install WSL2 and copied over all of my folders from my original WSL1, but nothing would work with Docker for some reason. Discussed it with Professor Duncan and we could not find out how to troubleshoot the issue and decided to use a workaround using the Windows PowerShell. Copied my GitHub project repository to that and got docker working properly from there. 
- Created Dockerfile as seen in my repository. Help given from Professor Duncan's lecture videos.
-Created a basic index.html file (also in the repository) and put it in the "html" folder. 
- Image of Docker running my index file on port 2000: [Docker running my index](https://user-images.githubusercontent.com/43617474/115931173-ae1ac780-a458-11eb-9f14-844cd6c0894e.PNG)

# Part 2: What Makes a Project a Monster...AKA GitHub Actions and DockerHub
- Created DockerHub account with the same username as GitHub
- With the free version of DockerHub, you simple click "Repositories" at the top of the site, and it will take you to a page where you can "Create Repository", then you just create the name, and can give a description about what the repository is. It is set to Public instead of Private for the purposes of these tests.
- [Created Public Repository in DockerHub](https://user-images.githubusercontent.com/43617474/115931242-cc80c300-a458-11eb-8dd8-8bec209b001f.PNG)
- [Ran AWS CLI on PowerShell](https://user-images.githubusercontent.com/43617474/115931598-65afd980-a459-11eb-8452-4bb245302df4.PNG)
- [AWS CLI on DockerDesktop](https://user-images.githubusercontent.com/43617474/115931624-73fdf580-a459-11eb-9a4c-6e759b17792a.PNG)
- Could not run "aws configure" from the directions followed, I can't tell if it is some issue related to PowerShell because only the first few commands through the tutorial would work. Image with error code below for "aws configure" below:
- [aws configure not working - possible powershell issue](https://user-images.githubusercontent.com/43617474/115931763-b6bfcd80-a459-11eb-950f-6d54f96b9d6f.PNG)

- Created secret username and secret password on GitHub to use for the DockerHub username and password. 
- Set DockerHubs username in the value field, and set the secret/viewable name to SECRET_USERNAME. 
- Set DockerHubs password in the value field, and set the secret/viewable name to SECRET_PASSWORD.
- Created workflow on GitHub using the template given in the Project description. [workflow](https://user-images.githubusercontent.com/43617474/115932738-87aa5b80-a45b-11eb-8b92-b655f3a39be3.PNG)
- Within configuration of the workflow, used my secret user name and password within the username/password sections.
- The first attempts failed because of the build-push being v2, talked to Professor Duncan about it and got it back to v1 and it successfully got to DockerHub. 
- ![v1 0 4 Successful Attempt](https://user-images.githubusercontent.com/43617474/115933005-14551980-a45c-11eb-8791-ec584a38ac9c.PNG)
- ![DockerHub Retrieved v1 0 4 from GitHub](https://user-images.githubusercontent.com/43617474/115933067-29ca4380-a45c-11eb-9613-01fa227e19aa.PNG)

