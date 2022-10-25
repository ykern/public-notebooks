# Tutorial
This is a tutorial to get started with the Cryosphere Virtual Laboratory (CVL).

## What is CVL
CVL stands for Cryosphere Virtual Laboratory. It offers users access to the following tools:
1. Data portal
The data catalogue on the CVL websites allows users to browse metadata from various data publishers to locate data from multiple sources.
2. Computing environment
In collaboration with Polar Thematic Exploitation Platform (PTEP) a virtual computing environment (JupyterLab) is offered. This allows users to use virtual ressources instead of local machines.
3. 3D Viewer
The 3D Visualiser is a tool to illustrate user projects.

## Workflow overview
The workflow is git based and uses GitHub as sharing platform.

[TODO diagram]

## How to get and set up required accounts 
Accounts for GitHub, PTEP and CVL are required to follow the workflow.

### GitHub
1. Log in to https://github.com/ (or register as new user)
2. Navigate to https://github.com/CryosphereVirtualLab/public-notebooks
3. Fork the repository, this will create a linked private repository at the following path (where YOUR-NAME is replaced by your username): https://github.com/YOUR-NAME/public-notebooks



### PTEP
1. Register at: https://portal.polartep.io/
2. Log in to: https://polartep.io/jupyter/hub/home
3. In the `Launcher` tab under the `Other` category launch the Terminal
4. Run the following commands:
- Navigate to the home directory

            cd
            
- Clone the repository from GitHub you forked earlier (replace YOUR-NAME with correct link):

            git clone https://github.com/YOUR-NAME/public-notebooks
            
- Navigate to the cloned directory:

            cd public-notebooks
            
- The following will update the work environment with missing python packages (confirm with `y` once asked):

            source provision.sh
    

### CVL
1. Register at: https://cvl.eo.esa.int/user/login


## How to find source data
1. Got to the CVL website: https://cvl.eo.esa.int/
2. Navigate to `Data`
3. Use the catalogue to browse through metadata

[???]



## How to start a Jupyter Notebook
1. Login to https://polartep.io/jupyter/hub/home
2. In the left sidepanel open the file browser (Ctrl+Shift+F)
3. Navigate to the desired directory
4. Press the blue `+` button on the top. This opens a Launcher tab. Here click the `Notebook` panel.

To get started with Jupyter Notebook check out the `cvl_get-started.ipynb` in the `public-notebooks` directory you cloned earlier from GitHub.



## Submitting to public notebooks

[TODO]
Github
Settings
Developer settings
Personal access tokens > Tokens (classic)
Select 

    git config --global user.email "you@example.com"
    git config --global user.name "Your Name"
    
git add FIRSTNAME_LASTNAME.ipynb 
git commit -m "MY-MESSAGE, e.g. create notebook or added import routine"
git push https://YOUR-TOKEN@github.com/ykern/public-notebooks.git
    
## Communication
For contact via email use: cvl@npolar.no

For technical problems, packages requests, etc. it is easiest to keep track of those by using the issue functionality of GitHub.
1. Go to https://github.com/CryosphereVirtualLab/public-notebooks/issues
2. On the top right press `New issue`
3. Describe the problem or need. If necessary files from GitHub can also be linked.


## Work on private computer
conda env export > environment.yml