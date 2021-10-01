-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/xerothyl/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/xerothyl/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/xerothyl/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/xerothyl/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/xerothyl/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["doom-one.vim"] = {
    loaded = true,
    path = "/home/xerothyl/.local/share/nvim/site/pack/packer/start/doom-one.vim"
  },
  ["headlines.nvim"] = {
    config = { "\27LJ\1\2�\6\0\0\4\0\17\0\0234\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0003\2\3\0003\3\4\0:\3\5\2:\2\a\0013\2\b\0003\3\t\0:\3\5\2:\2\n\0013\2\v\0003\3\f\0:\3\5\2:\2\r\0013\2\14\0003\3\15\0:\3\5\2:\2\16\1>\0\2\1G\0\1\0\borg\1\2\0\0\rHeadline\1\0\6\21headline_pattern\t^%*+\25source_pattern_start)#%+[bB][eE][gG][iI][nN]_[sS][rR][cC]\19codeblock_sign\14CodeBlock\19dash_highlight\tDash\23source_pattern_end!#%+[eE][nN][dD]_[sS][rR][cC]\17dash_pattern\r^-----+$\fvimwiki\1\2\0\0\rHeadline\1\0\6\21headline_pattern\b^=+\25source_pattern_start\f^{{{%a+\19codeblock_sign\14CodeBlock\19dash_highlight\tDash\23source_pattern_end\n^}}}$\17dash_pattern\v^---+$\brmd\1\2\0\0\rHeadline\1\0\6\21headline_pattern\b^#+\25source_pattern_start\t^```\19codeblock_sign\14CodeBlock\19dash_highlight\tDash\23source_pattern_end\n^```$\17dash_pattern\v^---+$\rmarkdown\1\0\0\19headline_signs\1\2\0\0\rHeadline\1\0\6\21headline_pattern\b^#+\25source_pattern_start\t^```\19codeblock_sign\14CodeBlock\19dash_highlight\tDash\23source_pattern_end\n^```$\17dash_pattern\v^---+$\nsetup\14headlines\frequire\0" },
    loaded = true,
    path = "/home/xerothyl/.local/share/nvim/site/pack/packer/start/headlines.nvim"
  },
  ["neoscroll.nvim"] = {
    loaded = true,
    path = "/home/xerothyl/.local/share/nvim/site/pack/packer/start/neoscroll.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/xerothyl/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/xerothyl/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/xerothyl/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeFocus" },
    loaded = false,
    needs_bufread = false,
    path = "/home/xerothyl/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua"
  },
  ["org-bullets.nvim"] = {
    config = { "\27LJ\1\0020\0\1\4\0\3\0\0064\1\0\0007\1\1\1\16\2\0\0%\3\2\0>\1\3\1H\0\2\0\b♥\vinsert\ntablem\1\0\3\0\a\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\0011\2\6\0:\2\5\1>\0\2\1G\0\1\0\0\fsymbols\1\0\0\1\5\0\0\b◉\b○\b✸\b✿\nsetup\16org-bullets\frequire\0" },
    loaded = true,
    path = "/home/xerothyl/.local/share/nvim/site/pack/packer/start/org-bullets.nvim"
  },
  ["orgmode.nvim"] = {
    config = { "\27LJ\1\0025\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\forgmode\frequire\0" },
    loaded = true,
    path = "/home/xerothyl/.local/share/nvim/site/pack/packer/start/orgmode.nvim"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/xerothyl/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/xerothyl/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/xerothyl/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/xerothyl/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: headlines.nvim
time([[Config for headlines.nvim]], true)
try_loadstring("\27LJ\1\2�\6\0\0\4\0\17\0\0234\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0003\2\3\0003\3\4\0:\3\5\2:\2\a\0013\2\b\0003\3\t\0:\3\5\2:\2\n\0013\2\v\0003\3\f\0:\3\5\2:\2\r\0013\2\14\0003\3\15\0:\3\5\2:\2\16\1>\0\2\1G\0\1\0\borg\1\2\0\0\rHeadline\1\0\6\21headline_pattern\t^%*+\25source_pattern_start)#%+[bB][eE][gG][iI][nN]_[sS][rR][cC]\19codeblock_sign\14CodeBlock\19dash_highlight\tDash\23source_pattern_end!#%+[eE][nN][dD]_[sS][rR][cC]\17dash_pattern\r^-----+$\fvimwiki\1\2\0\0\rHeadline\1\0\6\21headline_pattern\b^=+\25source_pattern_start\f^{{{%a+\19codeblock_sign\14CodeBlock\19dash_highlight\tDash\23source_pattern_end\n^}}}$\17dash_pattern\v^---+$\brmd\1\2\0\0\rHeadline\1\0\6\21headline_pattern\b^#+\25source_pattern_start\t^```\19codeblock_sign\14CodeBlock\19dash_highlight\tDash\23source_pattern_end\n^```$\17dash_pattern\v^---+$\rmarkdown\1\0\0\19headline_signs\1\2\0\0\rHeadline\1\0\6\21headline_pattern\b^#+\25source_pattern_start\t^```\19codeblock_sign\14CodeBlock\19dash_highlight\tDash\23source_pattern_end\n^```$\17dash_pattern\v^---+$\nsetup\14headlines\frequire\0", "config", "headlines.nvim")
time([[Config for headlines.nvim]], false)
-- Config for: org-bullets.nvim
time([[Config for org-bullets.nvim]], true)
try_loadstring("\27LJ\1\0020\0\1\4\0\3\0\0064\1\0\0007\1\1\1\16\2\0\0%\3\2\0>\1\3\1H\0\2\0\b♥\vinsert\ntablem\1\0\3\0\a\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\0011\2\6\0:\2\5\1>\0\2\1G\0\1\0\0\fsymbols\1\0\0\1\5\0\0\b◉\b○\b✸\b✿\nsetup\16org-bullets\frequire\0", "config", "org-bullets.nvim")
time([[Config for org-bullets.nvim]], false)
-- Config for: orgmode.nvim
time([[Config for orgmode.nvim]], true)
try_loadstring("\27LJ\1\0025\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\forgmode\frequire\0", "config", "orgmode.nvim")
time([[Config for orgmode.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeFocus lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFocus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
