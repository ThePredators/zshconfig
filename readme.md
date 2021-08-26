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

🔆 When you create your own config file / alias file / script file you will never need to import it to the .zshrc or .zshc its done automatically. Just run a new terminal/iTerm Window/Tab.  


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

## ⭐️ Questions :

**Why using .sh files in config/aliases folders ?**
I use ".sh" extension to have great sythaxe format on most of text editors, but you can remove ".sh" extension if you want. 

Enjoy :) 