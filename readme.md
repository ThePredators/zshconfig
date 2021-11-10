# ZSH Config
![](https://img.shields.io/badge/version-1.0.0-green.svg)


## ⭐️ About 

This project shows how to interact with zsh in a clever way, to organize your files and keep your mind and zsh usage clean

## 🔥 How to use ?

1. Clone this repository to `/Users/$(whoami)/`  
2. Edit .zshrc (.zshrc should not contain anything but this line). Zsh config can be edited here `config/zsh.sh` 
```sh 
source /Users/$(whoami)/zshconfig/.zshc
```
3. ⚠️ Don't forget to give your script files execution rights. You can do that by simply running this script :
```sh
bash scripts/give-script-exec-rights.sh
``` 

**If your current macOS version is greather than 11, edit .zshc with :**

```sh
IS_MACOS_GT_11=true
```

**For Intel Users**

Edit .zshc and change this to :
```sh
# Disable M1 Support
IS_M1_SHIP=false
```

**For M1 Users**

Edit .zshc and change this to :
```sh
# Enable M1 Support
IS_M1_SHIP=true
```

## 🔆 How does this work ? 

When you create your own config file / alias file / script file you will never need to import it to the .zshrc or .zshc its done automatically. 

Just run a new terminal/iTerm Window/Tab

**⭐️ Or Be clever :**

Add this alias to your .zshrc like this :
```
alias reload="source /Users/$(whoami)/.zshrc"
```

Now everytime you edit an alias/config/script just run : 
```
reload
```

## ⭐️ Project Architecture 

```
zshconfig
│   README.md
│   .zshc  # will contain only Root_PATHS and configs added dynamically
│
└───aliases # will contain all your aliases
│   │   *.sh
│   
└───config # will contain only config files
│   │   *.sh
│   │   zsh.sh # will contain the zsh config
│   
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

Enjoy :) 
