# xgit
Main part of this project is Powershell (PS) function that runs any given GIT command in all local repositories in folder.  

This should be helpful in situation when you have many local repositories cloned locally and wwant to view and manage them via GIT commands.
Script contains definiton of function and creation of __xgit__ alias which you can use to run GIT command on all repositories in parent folder that holds local GIT repositores.  

Path of the parent folder has to be coded into the PS function.  

Examples:  

1. Perform "git status" command on all repositores and see their output:  
__*xgit "status"*__  

  ![screenshot](./xgit-scr.png?raw=true)

2. Perform changing of current branch to main:  
__*xgit "checkout main"*__  

2. Perform undoing of local changes in repositories:  
__*xgit "checkout ."*__  

This way, any GIT command should available for execution in all local repositories.
