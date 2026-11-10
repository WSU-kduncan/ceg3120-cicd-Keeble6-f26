Part 1 - Create a Docker container Image Documentation

Explanation and links to web site content

index.html - Is the homepage that contains information about the project.

More information.html -The second page that contains more of the project.

style.css - shows the colors of the page , spacing , font like the pink colors.

Explanation of and link to Dockerfile
The dockerfile helps with the image and copies the html.

How to build an image from the repository Dockerfile 
Include tagging requirements when planning to use
DockerHub for a container image repository

To bulid an image i had to get docker desktop use  i then used docker build -t jadakeeble/ceg3120-cicd:latest . in the vs code  to tage it was my username/ and my repository for github and then  tag:

How to run a container that will serve the web application from the image built by the Dockerfile


I then created and image using the command docker run -d --name ceg3120-updated -p 8080:80 jadakeeble/ceg3120-cicd:latest because it runs my container and usises my git hub repostory thrn i did docker ps to show my website host which was http://localhost:8080 this is where you can access my website.






Part 2 - GitHub Actions and DockerHub Documentation 


Configuring GitHub Repository Secrets:
How to create a PAT for authentication (and recommended PAT scope for this project)
How to set repository Secrets for use by GitHub Actions
Describe the Secrets set for this project

I went to docker hub then I went to settings then i went to personal tokens then click generate a new token  give it a name on the DOCKER_USERNAME then check read and write then it will generate you a token that is not ment to be shared.


CI with GitHub Actions

Explanation of workflow trigger
i switched the name: Build and Push Docker Image

on:
  push:
    tags:
      - 'v*.*.*'
      to name: Build and Push Docker Image
 the tags to branches and i switched 'v*.*.* to main then helped be when pushing into main.

Explanation of workflow steps

 Actions and checkout - access dockerfile
 Docker setup- buliding a container image
authenticate by logging in to docker hub with the DOCKER_USERNAME and DOCKER_TOKEN through terminal.
Make Tags using Docker
Bulid and push thr image for dockerfile and dockerhub.


Explanation / highlight of values that need updated if used in a different repository
changes in workflow
changes in repository

I then updated the workflow  i turned it back to the orginal.I did .github as a folder with workflow

Link to the Part 2 version of your workflow file, using a commit permalink - the file on main will change in Part 3
On GitHub, open the file at the commit you want, open the ... menu, and select Copy permalink

https://github.com/WSU-kduncan/ceg3120-cicd-Keeble6-f26/blob/fb8e8a2254cc44f0d48be684e634e66213cda339/.github/workflows/docker-publish.yml

Testing & Validating
How to test that your workflow did its tasking
How to verify that the image in DockerHub works when a container is run using the image
Link to your DockerHub repository
Resources

test for a branch
The main test
tag test
untagged test 
 made another tag and tested that one.
Had to use these commands for the image to make sure it showed:

docker run -d --name website-v1-0 -p 8081:80 jadakeeble/ceg3120-cicd:1.0

docker run -d --name website-v1-1 -p 8082:80 jadakeeble/ceg3120-cicd:1.1

docker ps
And these gave me my websites my html from vs code.






Part 3 - Semantic Versioning Documentation


Generating tags
How to see tags in a git repository
How to generate a tag in a git repository
How to push a tag in a git repository to GitHub

On git bash or vs code terminal do command git tag
git tag -a your tags  -m "My tags " or whatever numbers you want  and then push it to your origin of your tag. 
git push origin your tag

Semantic Versioning Container Images with GitHub Actions
Explanation of workflow trigger
Explanation of workflow steps
Explanation / highlight of values that need updated if used in a different repository
changes in workflow
changes in repository
Link to workflow file in your GitHub repository
 the orginal docker-publish .yml 
on:
  push:
    tags:
      - 'v*.*.*'
       so i attached my tag 'v*.*.*'
       checkout for my repository and using docker  which helped me build my image and 
       pushing it with my tags attached.

https://github.com/WSU-kduncan/ceg3120-cicd-Keeble6-f26/blob/main/.github/workflows/docker-publish.yml

Testing & Validating
How to test that your workflow did its tasking
How to verify that the image in DockerHub works when a container is run using the image
Link to your DockerHub repository with evidence of the tag set


I then created and image using the command docker run -d --name ceg3120-updated -p 8080:80 jadakeeble/ceg3120-cicd:latest because it runs my container and usises my git hub repostory thrn i did docker ps to show my website host which was http://localhost:8080 and http://localhost:8082 this is where you can access my website.






Part 4 - Project Description & Diagram Documentation

Local run - docker ps showing your container running, and a browser showing both of your pages with your CSS applied.

![Project 6 CI/CD Diagram](Project%206%20images/Project%206%20Diagram.png)

![Docker container running](Project%206%20images/docker-container-running.png)

![Docker commands](Project%206%20images/Docker%20Commands%20Completed.png)

![First webpage](Project%206%20images/My%20webpage.png)

![Second webpage](Project%206%20images/My%20webpage2.png)


Repository secrets - your repository's Actions secrets page showing DOCKER_USERNAME and DOCKER_TOKEN. Secret values are not displayed - never show or commit them.

![GitHub repository secrets](Project%206%20images/github-repository-secrets.png)


Main trigger - a successful workflow run from a push to main, with the commit SHA visible.

![Main trigger](Project%206%20images/main-trigger.png)


Branch negative test - push a commit to a branch other than main, and show the commit on that branch and that no workflow run started.

![Branch commit](Project%206%20images/branch%20commit.png)

![Branch negative test](Project%206%20images/branch-negative-test.png)

Change to image - change visible text on your site and push it to main. After the workflow succeeds, pull and run the new image and show the change in a browser.

![Website text change](Project%206%20images/change-to-image.png)

![Updated website](Project%206%20images/My%20updated%20website.png)

![Updated container running](Project%206%20images/updated-container-running.png)


Tag trigger - git tag -l output, and a successful workflow run with a tag as its event.

![Version tag pushed](Project%206%20images/version-tag-pushed.png)

![GitHub version tag](Project%206%20images/github-v1-tag.png)

![Successful workflow steps](Project%206%20images/workflow-successful-steps.png)

![Tag trigger workflow](Project%206%20images/workflow-tag-trigger-restored.png)


Tag negative test - push a commit without a tag, and show the commit and that no workflow run started.

![Untagged commit](Project%206%20images/untagged-commit.png)

![Tag negative test](Project%206%20images/tag-negative-test.png)


Tag set - your DockerHub repository's tags showing latest, major, and major.minor.
![Docker Hub semantic tags](Project%206%20images/docker-hub-semantic-tags.png)

![Published version tags](Project%206%20images/published%20and%20the%20version%20tags%20were%20created.png)

Two releases - after your second release (for example, v1.0.0 then v1.1.0), your DockerHub tags and digests showing that 1 and latest moved to the new image while 1.0 stayed on the old image.

![Two releases](Project%206%20images/two-releases.png)

![Second release workflow](Project%206%20images/second-release-workflow.png)

Rollback - run containers from your major.minor tags (for example, :1.0 and :1.1) and show in a browser that each serves its version of the site.

![Rollback containers](Project%206%20images/rollback-containers.png)

![Version 1.0](Project%206%20images/10-rollback-v1.0.png)

![Version 1.1](Project%206%20images/rollback-v1.1.png)

Resources - https://www.w3schools.com/
and coploit 













Testing branch trigger behavior.