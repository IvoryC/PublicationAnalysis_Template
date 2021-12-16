# Steps to This Analysis

## 1. Ensure that BioLockJ is on local system
BioLockJ - https://biolockj-dev-team.github.io/BioLockJ/Getting-Started/

## 2. Download the PublicationAnalysis directory
git clone https://github.com/FodorLab/PublicationAnalysis_Template

## 3. Set up required software

### Option A) using docker

Install docker.
Docker Desktop - https://www.docker.com/products/docker-desktop

Make sure the ` docker run hello-world ` command runs successfully.

The docker images required for this pipeline will be automatically pulled from the docker hub as need.  The first time the pipeline runs, startup will be slow as images are downloaded. 

**_If_** the specified images cannot be retrieved, they can be built from the docker files.  See the analysis/dockerfiles folder.  Build instructions are included in each file.

### Option B) not using docker

Make sure R is installed.  See https://www.r-project.org/.  These scripts were written with _version_.

Make sure all required R packages are installed.  To do this, make sure the _libraryList.R_ script runs without errors.

Move to the Analysis folder:            
`cd <path/to/PublicationAnalysis_Template>/analysis`

Run the library list script.
`Rscript resources/libraryList.R `

## 4. Run BioLockJ pipeline

Move to the Analysis folder:            
`cd <path/to/PublicationAnalysis_Template>/Analysis`

To run the pipeline using **locally installed software**:                 
`biolockj newProject.config`

To run the pipeline using **docker images**, add the -d argument:                                    
`biolockj -d newProject.config`

