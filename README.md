## My mappings
```
Leader = Space
Open telescope and find files in directory: <space>ff (Normal mode)  
Open telescope and find hidden files in directory: <space>fi (Normal mode)  
Open telescope and perform live grep on directory: <space>fg (Normal mode)  

Open tree: <Ctrl + n> (Normal mode)  
comment line: <leader>/ (Normal mode)  
comment line: <leader>/ (Visual mode)  

clear highlight: <ESC><ESC> (Normal mode)  

go to next tab in bufferline: <Tab> (Normal Mode)  
go to previous tab in bufferline: <Tab> (Normal Mode)  
close the tab in bufferline: <Shift + x>  

If you used Vscode in the past, you might have gotten used to just pressing tab or  
the arrow keys for traversing suggestions, I dont know why but that isnt the  
default, here is my quick fix for the issue.  

go up the snippet: <Ctrl + q> (insert mode)  
go down the snippet: <Ctrl + a> (insert mode)  
```


## Quick install of Packer.nvim

> Linux/Unix  

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

> Windows  

```
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

For some reason Neoscroll acts weird, uncomment 
```
setup = require("plugins.plugin_configs.neoscroll"),
```

## Problem for now
It seems that every time I want to do an update and sync, the whole things breaks.  
The best way to deal with the breaks is to comment  
`colorscheme doom-one` in `~/.config/nvim/lua/core/init.lua` and  
comment the setup variables in `~/.config/nvim/lua/plugins/init.lua`  
and then do a pull and sync. Once done uncomment the settings.  

The most convenient way do this is via a macro, I will have to see why its breaks like that...  

![showcase1](showcase/showcase-1.png)
![showcase2](showcase/showcase-2.png)
![showcase3](showcase/showcase-3.png)
![showcase4](showcase/showcase-4.png)
