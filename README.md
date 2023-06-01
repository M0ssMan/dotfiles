# dotfiles

**NOTE:** I've given up trying to maintain two versions of dotfiles. It was just too much work trying to sync them and deal with merge conflicts.
I think it is easier to just manually transfer over changes I need at this point.

## Git Sync Commands

For use on work computers use the "g" commands

To make changes to upstream master use `upmaster` branch and `git gpush`

To make changes to work repo make changes in `master` branch and `git gpush`

Note that `git gpush` is a force push onto work repo since it rebases (re-orgs history and hashes) master(work)
onto upstream(personal)

`git gpull` to get changes for both upstream and work repo. This will destroy any local changes in master

Note Work repo may not have upstream changes
if upstream was changed without the `gpush` command. In that case master should be rebased with the
`git checkout master` and then `git rebase upmaster` then `git push --force origin master`

Making changes on personal computers should follow the regular `push` and `pull` on master

## Git Auth

SSH was too confusing and might not be ideal for work scenario.
Instead I'm using a [locally stored](https://git-scm.com/book/en/v2/Git-Tools-Credential-Storage) [personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)
That storage setting is set in the local .gitconfig file for the specific dotfiles repo. NOT stored in the ~/.gitconfig file

## Using Stow

[Quick Explanation](https://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html)
**NOTE:** I'm pretty sure when running stow commands you should always be in the dotfiles directory

### Mac bootstrap stow

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
```
brew install stow
```

### View Stowed Files
**NOTE:** Currently this needs to be run at the top level of a directory to find the linkage.
At some point I would like to rewrite so that no matter where a user is in any directory they
will be able to see all dotfile linkages
```
find -lname '*dotfiles*' -printf '%P -> %l\n'
```

### Flags for Stow Dry Run
```
-nv
```

## VS Code Stow commands by OS

VS code setting are stored in different file location by OS. So each OS needs a different command to instruct stow on
where to put the settings file

#### Work VS Code

```
stow --target=$HOME/.config vscode --ingore='settings.json'
```

#### Mac VS Code stow/unstow
```
stow --target=$HOME/Library/Application\ Support vscode
```

```
stow -D --target=$HOME/Library/Application\ Support vscode
```

#### Linux VS Code stow/unstow
```
stow --target=$HOME/.config vscode
```

```
stow -D --target=$HOME/.config vscode
```

#### Bashrc

For work DO NOT stow bash package. Instead source from dotfiles directory. Add the
following code in work's .bashrc
```
source ./dotfiles/bash/.bashrc
```
