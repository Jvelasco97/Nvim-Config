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

in the setup of neoscroll and run `PackerSync` & `PackerUpdate`.  
