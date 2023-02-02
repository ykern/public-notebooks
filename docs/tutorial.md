# Tutorial
This is a tutorial to get started with the Cryosphere Virtual Laboratory (CVL)

## What is CVL
CVL stands for Cryosphere Virtual Laboratory. It offers users access to the following tools and resources:
1. Data portal. The data catalogue on the CVL websites allows users to browse metadata from various data publishers to locate data from multiple sources.
2. Computing environment. In collaboration with Polar Thematic Exploitation Platform (PTEP) a virtual computing environment (JupyterLab) is offered. This allows users to use virtual ressources instead of local machines.
3. 3D Viewer. The 3D Visualiser is a tool to illustrate user projects.

## Workflow overview
The workflow is git based and uses GitHub as sharing platform.

<img src="res/diagram1.drawio.png" width="500">

## How to get and set up required accounts 
Accounts for GitHub, PTEP and CVL are required to follow the workflow.

### GitHub
1. Log in to https://github.com/ (or register as new user)
2. Navigate to https://github.com/CryosphereVirtualLab/public-notebooks
3. Fork the repository, this will create a linked repository at the following path (where YOUR-NAME is replaced by your username): https://github.com/YOUR-NAME/public-notebooks. The moment you are ready to share the notebook, even in the draft state, you can submit a pull request to the original repository. See documentation for [pull requests](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests).

### PTEP
1. Register at: https://portal.polartep.io/
2. Log in to: https://polartep.io/jupyter/hub/home
3. In the `Launcher` tab under the `Other` category launch the Terminal
4. Run the following commands:
- Navigate to the home directory
```
cd ~
```

- Clone the repository from GitHub you forked earlier (replace YOUR-NAME with correct link):
```
git clone https://github.com/YOUR-NAME/public-notebooks
```

- Navigate to the cloned directory:
```
cd public-notebooks
```
            
- The following will update the work environment with missing python packages (confirm with `y` once asked):
```
source provision.sh
```

### CVL
To access data on CVL data portal an account is required.
Please register at: https://cvl.eo.esa.int/user/login. Once registered, your account will need to be approved by the administrator.


## How to find source data
1. Got to the CVL website: https://cvl.eo.esa.int/
2. Navigate to `Data`
3. Use the catalogue to browse through metadata


## How to start a Jupyter Notebook
1. Login to https://polartep.io/jupyter/hub/home
2. In the left sidepanel open the file browser (Ctrl+Shift+F)
3. Navigate to the desired directory
4. Press the blue `+` button on the top. This opens a Launcher tab. Select the `Notebook` panel.

To get started with Jupyter Notebook check out the `cvl_get-started.ipynb` in the `public-notebooks` directory you cloned earlier from GitHub.


## Submitting to "public-notebooks" repository
### Git and github settings
Once you have enough changes to share with others (and we encourage you to do so!), you can submit a pull request to the original repository.
There are few steps required for anyone sharing their code via Git public repositories.

Before you begin you will need to create a personal access token, since Github does not allow to use your username and password for authenticating access to repository. Please visit `https://github.com/settings/tokens` and create a token with access to repo. You can use it later instead of your username and password.

You will need to tell git who you are. For that please execute in the command line and provide your name and email address. They will appear in git/github as personal identifiers.
```
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```

### Creating your own notebook
1. give your notebook a distinct and descriptive name, e.g. `arctic-amplification.ipynb`. If you need to create several files beside the notebook, create a folder, e.g. `arctic-amplification` and place your notebook and other files there.
2. Create a branch
```
git checkout -b 'arctic-amplification'
```
3. Stage (add) your changes to the git repository:
```
git add `arctic-amplification/*`
```
4. Commit your changes:
```
git commit -m "MY-MESSAGE, e.g. create notebook or added import routine"
```
5. Push your changes to the server:
```
git push https://YOUR-TOKEN@github.com/YOUR-GITHUB-ID/public-notebooks.git
```
6. If you have not done it already, create a [pull request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests)! To accept the notebook delivery it should be possible to execute the notebook and produce expected results, inline with the original proposal.

## Communication
For contact via email use: cvl `at` npolar.no

For technical problems, packages requests, etc. it is easiest to keep track of those by using the issue functionality of GitHub.
1. Go to https://github.com/CryosphereVirtualLab/public-notebooks/issues
2. On the top right press `New issue`
3. Describe the problem, proposal or simply a question. If necessary files from GitHub can also be linked.
