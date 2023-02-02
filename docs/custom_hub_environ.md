# Customize JupyterHub environment
Additional information about how to customise the JupyterHub work environment.

## Terminal

### Shell customisation
Create files to be initiated when opening a new terminal
```
touch $HOME/.bash_login
touch $HOME/.bashrc
```
Edit the `.bash_login` file
```
nano $HOME/.bash_login
```
add the following line:
```
source $HOME/.bashrc
```
Write file with `^O` then `Enter` and close file with `^X`.

Now you can edit the `.bashrc` file and add custom aliases, functions, etc.
```
nano $HOME/.bashrc
```
        
Example for an useful alias to save the `git push` command with your GitHub token and ID:
```
alias gitp="git push https://YOUR-TOKEN@github.com/YOUR-GITHUB-ID/public-notebooks.git"
```
Now typing the command `gitp` in the terminal will trigger the whole `git push` command.

In order to activate changes to the `.bashrc` in the current Terminal run
```
source $HOME/.bashrc
```
For all newly opened terminals this is already done because of the `.bash_login` file created earlier.
