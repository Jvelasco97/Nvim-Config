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

