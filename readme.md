# ZSH Config (for mainly Apple Silicon)
![](https://img.shields.io/badge/version-1.0.0-green.svg)

## ⭐️ About 

This project shows how to interact with zsh in a clever way, to organize your files and keep your mind and zsh usage clean

## 🔥 How to use ?

1. Clone this repository to `/Users/$(whoami)/`  
2. Edit .zshrc (.zshrc should not contain anything but these lines) 
```sh 
source /Users/$(whoami)/zshconfig/.zshc
```
3. ⚠️ Run a new terminal & run :
```sh
setup_zsh
``` 
4. close all previous terminals and open a new one you are all setup.

## 🔆 How does this work ? 

- When you create your own (config, alias & script file) you will never need to import it to the `.zshrc` or `.zshc` its done automatically. 
- To source for the fisrt time your aliases, scripts & configs you need to run `reload`
- After the first sourcing you can edit aliases functions & scripts without needing to reload ! 

## ⭐️ Project Architecture 

```
zshconfig
│   README.md
│   .zshc  # will contain only Root_PATHS and configs added dynamically
└───_ # will contain only static configs
│   │   <any>
└───aliases # will contain all your aliases
│   │   *.sh
└───config # will contain only config files
│   │   *.sh
│      zsh.sh # will contain the zsh config
└───lastest # will contain only the latest configs you need to add to zshrc (initially)
│   │   *.sh
└───scripts # will contain your scripts ready to be runned
    │   *.sh
```

## ⭐️ BackUp your configuration :

Don't foget to save your config on a private Git repository to easily find it or share it across your computers. 

To do that follow this steps

1. Git Init in  /Users/$(whoami)/
```sh
git init
```
2. Edit the .gitignore and keep only this
```md
# Ignore everything
/*

# do not ignore these files...
!.gitignore
!.zshrc
!.zshenv
!.zprofile

## if you want to backup the zsh command you used 
!.zsh_history

## Backup zshconfig
!/zshconfig
```
3. Add all, set your private repos and push

You're good to go !

## ⭐️ Questions :

**Why using .sh files in config/aliases folders ?**
I use ".sh" extension to have great sythaxe format on most of text editors, but you can remove ".sh" extension if you want. 

**2026 Magic Feature**
- When you edit an alias & script file it is auto updated on zsh session.
- To test this you can run an alias function, then update its content, and re-run it. 

Enjoy :) 
