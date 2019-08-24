# dotfiles

## Mac Bootstrap
#### Brew
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

#### Stow
```
brew install stow
```

#### VS Code
```
stow --target=$HOME/Library/Application\ Support vscode
```

## VS Code Unstow
```
stow -D --target=$HOME/Library/Application\ Support vscode
```

## Linux

#### VS Code
```
stow --target=$HOME/.config vscode
```

