# dotfiles

### View Stowed Files
```
find -lname '*dotfiles*' -printf '%P -> %l\n'
```

### Flags for Stow Dry Run
```
-nv
```

## Mac

#### Bootstrap Stow
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
```
brew install stow
```

#### VS Code stow
```
stow --target=$HOME/Library/Application\ Support vscode
```

#### VS Code Unstow
```
stow -D --target=$HOME/Library/Application\ Support vscode
```

## Linux

#### VS Code
```
stow --target=$HOME/.config vscode
```

#### VS Code Unstow
```
stow -D --target=$HOME/.config vscode
```
