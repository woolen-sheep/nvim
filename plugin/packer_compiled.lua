-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = true
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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/root/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/root/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/root/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/root/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/root/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
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
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fComment\frequire\0" },
    keys = { { "n", "gcc" }, { "n", "gbc" }, { "v", "gc" }, { "v", "gb" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/root/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    after_files = { "/root/.local/share/nvim/site/pack/packer/opt/cmp-cmdline/after/plugin/cmp_cmdline.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-dictionary"] = {
    after_files = { "/root/.local/share/nvim/site/pack/packer/opt/cmp-dictionary/after/plugin/cmp_dictionary.vim" },
    config = { "\27LJ\2\n®\1\0\0\4\0\a\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\6\0B\0\1\1K\0\1\0\vupdate\bdic\1\0\2\27first_case_insensitive\2\rdocument\2\1\0\1\6*\27/usr/share/dict/en.dic\nsetup\19cmp_dictionary\frequire\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/cmp-dictionary",
    url = "https://github.com/uga-rosa/cmp-dictionary"
  },
  ["cmp-nvim-lsp"] = {
    after_files = { "/root/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    after_files = { "/root/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    after_files = { "/root/.local/share/nvim/site/pack/packer/opt/cmp-vsnip/after/plugin/cmp_vsnip.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["crates.nvim"] = {
    after_files = { "/root/.local/share/nvim/site/pack/packer/opt/crates.nvim/after/plugin/cmp_crates.lua" },
    config = { "\27LJ\2\nÂ\1\0\0\5\0\14\0\0266\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0029\0\a\0'\2\b\0B\0\2\0016\0\0\0'\2\t\0B\0\2\0029\0\2\0009\0\n\0005\2\f\0004\3\3\0005\4\v\0>\4\1\3=\3\r\2B\0\2\1K\0\1\0\fsources\1\0\0\1\0\1\tname\vcrates\vbuffer\bcmp\rnvim-cmp\vloader\vpacker\npopup\1\0\0\1\0\2\vborder\vsingle\14autofocus\2\nsetup\vcrates\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/crates.nvim",
    url = "https://github.com/saecki/crates.nvim"
  },
  ["dashboard-nvim"] = {
    commands = { "Dashboard" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["dial.nvim"] = {
    config = { "\27LJ\2\nœ\3\0\0\n\0\25\0<6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\1\18\3\1\0009\1\4\0015\4\23\0004\5\v\0009\6\5\0009\6\6\0069\6\a\6>\6\1\0059\6\5\0009\6\6\0069\6\b\6>\6\2\0059\6\t\0009\6\6\0069\6\n\6>\6\3\0059\6\t\0009\6\6\0069\6\v\6>\6\4\0059\6\t\0009\6\6\0069\6\f\6>\6\5\0059\6\t\0009\6\6\0069\6\r\6>\6\6\0059\6\14\0009\6\6\0069\6\15\6>\6\a\0059\6\14\0009\6\16\0065\b\18\0005\t\17\0=\t\19\bB\6\2\2>\6\b\0059\6\14\0009\6\16\0065\b\21\0005\t\20\0=\t\19\bB\6\2\2>\6\t\0059\6\22\0009\6\6\0069\6\22\6>\6\n\5=\5\24\4B\1\3\1K\0\1\0\fdefault\1\0\0\vsemver\1\0\2\tword\1\vcyclic\2\1\3\0\0\a&&\a||\relements\1\0\2\tword\2\vcyclic\2\1\3\0\0\band\aor\bnew\tbool\rconstant\n%H:%M\n%m/%d\r%Y-%m-%d\r%Y/%m/%d\tdate\bhex\fdecimal\nalias\finteger\19register_group\faugends\16dial.config\16dial.augend\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/dial.nvim",
    url = "https://github.com/monaqa/dial.nvim"
  },
  ["diffview.nvim"] = {
    commands = { "DiffviewOpen", "DiffviewFileHistory" },
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rdiffview\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["dressing.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rdressing\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\nX\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\ttext\1\0\0\1\0\1\fspinner\tdots\nsetup\vfidget\frequire\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["focus.nvim"] = {
    config = { "\27LJ\2\nã\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\23excluded_filetypes\1\0\1\15signcolumn\1\1\6\0\0\nfterm\tterm\15toggleterm\nMundo\14MundoDiff\nsetup\nfocus\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/focus.nvim",
    url = "https://github.com/beauwilliams/focus.nvim"
  },
  ["friendly-snippets"] = {
    after = { "nvim-cmp" },
    keys = { { "n", ":" }, { "n", "/" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\nP\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\22galaxyline_config\27plugins.enhance.config\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/galaxyline.nvim",
    url = "https://github.com/glepnir/galaxyline.nvim"
  },
  ["github-nvim-theme"] = {
    cond = { "\27LJ\2\nÀ\1\0\0\b\0\5\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\3\0005\3\4\0B\1\2\4X\4\4Ä\5\0\5\0X\6\2Ä+\6\2\0L\6\2\0E\4\3\3R\4˙\127+\1\1\0L\1\2\0\1\6\0\0\16github_dark\24github_dark_default\18github_dimmed\17github_light\25github_light_default\vipairs\ntheme\31plugins.colorscheme.config\frequire\0" },
    config = { "\27LJ\2\nO\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\17github_setup\31plugins.colorscheme.config\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/root/.local/share/nvim/site/pack/packer/opt/github-nvim-theme",
    url = "https://github.com/projekt0n/github-nvim-theme"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nW\0\4\n\1\4\0\14\14\0\3\0X\4\1Ä4\3\0\0-\4\0\0=\4\0\0036\4\1\0009\4\2\0049\4\3\4\18\6\0\0\18\a\1\0\18\b\2\0\18\t\3\0B\4\5\1K\0\1\0\0¿\bset\vkeymap\bvim\vbuffer#\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0\0\14next_hunkg\1\0\3\1\a\0\0156\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\2Ä'\0\3\0002\0\aÄ6\0\0\0009\0\4\0003\2\5\0B\0\2\1'\0\6\0002\0\0ÄL\0\2\0L\0\2\0\1¿\r<Ignore>\0\rschedule\a]c\tdiff\awo\bvim#\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0\0\14prev_hunkg\1\0\3\1\a\0\0156\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\2Ä'\0\3\0002\0\aÄ6\0\0\0009\0\4\0003\2\5\0B\0\2\1'\0\6\0002\0\0ÄL\0\2\0L\0\2\0\1¿\r<Ignore>\0\rschedule\a[c\tdiff\awo\bvim1\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\1¿\1\0\1\tfull\2\15blame_line(\0\0\3\1\2\0\5-\0\0\0009\0\0\0'\2\1\0B\0\2\1K\0\1\0\1¿\6~\rdiffthisˇ\4\1\1\t\0&\0N6\1\0\0009\1\1\0019\1\2\0013\2\3\0\18\3\2\0'\5\4\0'\6\5\0003\a\6\0005\b\a\0B\3\5\1\18\3\2\0'\5\4\0'\6\b\0003\a\t\0005\b\n\0B\3\5\1\18\3\2\0005\5\v\0'\6\f\0'\a\r\0B\3\4\1\18\3\2\0005\5\14\0'\6\15\0'\a\16\0B\3\4\1\18\3\2\0'\5\4\0'\6\17\0009\a\18\1B\3\4\1\18\3\2\0'\5\4\0'\6\19\0009\a\20\1B\3\4\1\18\3\2\0'\5\4\0'\6\21\0009\a\22\1B\3\4\1\18\3\2\0'\5\4\0'\6\23\0009\a\24\1B\3\4\1\18\3\2\0'\5\4\0'\6\25\0003\a\26\0B\3\4\1\18\3\2\0'\5\4\0'\6\27\0009\a\28\1B\3\4\1\18\3\2\0'\5\4\0'\6\29\0009\a\30\1B\3\4\1\18\3\2\0'\5\4\0'\6\31\0003\a \0B\3\4\1\18\3\2\0'\5\4\0'\6!\0009\a\"\1B\3\4\1\18\3\2\0005\5#\0'\6$\0'\a%\0B\3\4\0012\0\0ÄK\0\1\0#:<C-U>Gitsigns select_hunk<CR>\aih\1\3\0\0\6o\6x\19toggle_deleted\14<space>td\0\bgiD\rdiffthis\bgid\30toggle_current_line_blame\bgib\0\bgiB\17preview_hunk\bgip\17reset_buffer\bgiR\20undo_stage_hunk\bgiu\17stage_buffer\bgiS\29:Gitsigns reset_hunk<CR>\bgir\1\3\0\0\6n\6v\29:Gitsigns stage_hunk<CR>\bgis\1\3\0\0\6n\6v\1\0\1\texpr\2\0\bgik\1\0\1\texpr\2\0\bgij\6n\0\rgitsigns\vloaded\fpackageí\6\1\0\5\0\24\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0023\3\16\0=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\2B\0\2\1K\0\1\0\14diff_opts\1\0\1\rinternal\2\28current_line_blame_opts\1\0\3\18virt_text_pos\beol\ndelay\3Ë\a\14virt_text\2\17watch_gitdir\1\0\2\17follow_files\2\rinterval\3Ë\a\14on_attach\0\nsigns\1\0\6\14word_diff\1\18sign_priority\3\6\20update_debounce\3d\nnumhl\2\23current_line_blame\1\vlinehl\1\17changedelete\1\0\4\nnumhl\21GitSignsChangeNr\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\ttext\b‚ñí\14topdelete\1\0\4\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\ttext\b‚Äæ\vdelete\1\0\4\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\ttext\6_\vchange\1\0\4\nnumhl\21GitSignsChangeNr\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\ttext\b‚ñë\badd\1\0\0\1\0\4\nnumhl\18GitSignsAddNr\ahl\16GitSignsAdd\vlinehl\18GitSignsAddLn\ttext\b‚ñé\nsetup\rgitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n›\3\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\20buftype_exclude\1\2\0\0\rterminal\21filetype_exclude\1\29\0\0\thelp\rterminal\14dashboard\vpacker\flspinfo\20TelescopePrompt\21TelescopeResults\rstartify\14dashboard\16dotooagenda\blog\rfugitive\14gitcommit\vpacker\fvimwiki\rmarkdown\btxt\nvista\thelp\ftodoist\rNvimTree\rpeekaboo\bgit\20TelescopePrompt\rundotree\24flutterToolsOutline\18lsp-installer\5\1\0\4\23indentLine_enabled\3\1\28show_first_indent_level\1#show_trailing_blankline_indent\1\tchar\b‚ñè\nsetup\21indent_blankline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["kanagawa.nvim"] = {
    cond = { "\27LJ\2\na\0\0\3\0\4\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0\6\0\3\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rkanagawa\ntheme\31plugins.colorscheme.config\frequire\0" },
    config = { "\27LJ\2\nQ\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\19kanagawa_setup\31plugins.colorscheme.config\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/root/.local/share/nvim/site/pack/packer/opt/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lightspeed.nvim"] = {
    config = { "\27LJ\2\ng\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21substitute_chars\1\0\0\1\0\2\6 \b‚ê£\6\r\bÔ†ê\nsetup\15lightspeed\frequire\0" },
    keys = { { "n", "s" }, { "v", "s" }, { "n", "S" }, { "v", "S" }, { "n", "f" }, { "n", "F" }, { "n", "t" }, { "n", "T" }, { "v", "f" }, { "v", "F" }, { "v", "t" }, { "v", "T" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/lightspeed.nvim",
    url = "https://github.com/ggandor/lightspeed.nvim"
  },
  ["lsp_lines.nvim"] = {
    config = { "\27LJ\2\nR\0\0\3\0\4\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0B\0\1\1K\0\1\0\vtoggle\nsetup\14lsp_lines\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/lsp_lines.nvim",
    url = "https://git.sr.ht/~whynothugo/lsp_lines.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n’\5\0\0\b\0\29\0)6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0026\1\0\0'\3\4\0B\1\2\0026\2\0\0'\4\5\0B\2\2\2:\3\f\2'\4\6\0>\4\2\0039\3\a\0015\5\t\0005\6\b\0=\6\n\0055\6\v\0=\6\f\0055\6\r\0=\6\14\0055\6\15\0=\6\16\0055\6\17\0=\6\18\0055\6\19\0=\6\20\0055\6\21\0=\0\22\6=\6\23\5B\3\2\0016\3\24\0009\3\25\0039\3\26\3)\5\0\0'\6\27\0005\a\28\0B\3\4\1K\0\1\0\1\0\1\tlink\fComment\21LspSagaLightBulb\16nvim_set_hl\bapi\bvim\21symbol_in_winbar\venable\1\0\4\14in_custom\1\14separator\n ÔÅî \14show_file\2\18click_support\1\23finder_action_keys\1\0\a\16scroll_down\n<C-f>\vvsplit\6s\nsplit\6i\14scroll_up\n<C-b>\tquit\6q\ttabe\6t\topen\t<CR>\17finder_icons\1\0\3\tlink\nÔ†∏  \bdef\nÔô®  \bref\nÔÄ¨  \26code_action_lightbulb\1\0\2\17virtual_text\2\tsign\1\22scroll_in_preview\1\0\2\16scroll_down\n<C-d>\14scroll_up\n<C-u>\22diagnostic_header\1\5\0\0\tÔôò \tÔÅ± \tÔÅö \tÔüª \17move_in_saga\1\0\1\21code_action_icon\tÔÇ≠ \1\0\2\tprev\6k\tnext\6j\18init_lsp_saga\tÔûî \20lspsaga.lspkind\flspsaga\15nvim-0.8.0\tvhas\17editor.utils\frequire\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\nù\6\0\0\4\0#\00046\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0014\0\0\0005\1\a\0005\2\b\0>\2\2\1=\1\6\0005\1\n\0005\2\v\0>\2\2\1=\1\t\0005\1\r\0005\2\14\0>\2\2\1=\1\f\0005\1\16\0005\2\17\0>\2\2\1=\1\15\0005\1\19\0005\2\20\0>\2\2\1=\1\18\0005\1\22\0005\2\23\0>\2\2\1=\1\21\0005\1\25\0005\2\26\0>\2\2\1=\1\24\0005\1\28\0005\2\29\0>\2\2\1=\1\27\0005\1\31\0005\2 \0>\2\2\1=\1\30\0006\1\0\0'\3!\0B\1\2\0029\1\"\1\18\3\0\0B\1\2\1K\0\1\0\17set_mappings\21neoscroll.config\1\2\0\0\b150\1\2\0\0\azb\azb\1\2\0\0\b150\1\2\0\0\azz\azz\1\2\0\0\b150\1\2\0\0\azt\azt\1\4\0\0\t0.10\nfalse\b100\1\2\0\0\vscroll\n<C-e>\1\4\0\0\n-0.10\nfalse\b100\1\2\0\0\vscroll\n<C-y>\1\4\0\0#vim.api.nvim_win_get_height(0)\ttrue\b150\1\2\0\0\vscroll\n<C-f>\1\4\0\0$-vim.api.nvim_win_get_height(0)\ttrue\b150\1\2\0\0\vscroll\n<C-b>\1\4\0\0\19-vim.wo.scroll\ttrue\b350\1\2\0\0\vscroll\n<C-k>\1\4\0\0\18vim.wo.scroll\ttrue\b350\1\2\0\0\vscroll\n<C-j>\rmappings\1\0\a\21performance_mode\1\24use_local_scrolloff\1\16hide_cursor\2\rstop_eof\2\22respect_scrolloff\1\25cursor_scrolls_alone\2\20easing_function\rcircular\1\n\0\0\n<C-j>\n<C-k>\n<C-b>\n<C-f>\n<C-y>\n<C-e>\azt\azz\azb\nsetup\14neoscroll\frequire\0" },
    keys = { { "n", "<C-e>" }, { "n", "<C-y>" }, { "n", "<C-f>" }, { "n", "<C-b>" }, { "n", "<C-j>" }, { "n", "<C-k>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["neovim-deus"] = {
    cond = { "\27LJ\2\n]\0\0\3\0\4\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0\6\0\3\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\tdeus\ntheme\31plugins.colorscheme.config\frequire\0" },
    config = { "\27LJ\2\nM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\15deus_setup\31plugins.colorscheme.config\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/root/.local/share/nvim/site/pack/packer/opt/neovim-deus",
    url = "https://github.com/Avimitin/neovim-deus"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\n¢\2\0\0\t\0\16\0\"6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0024\2\0\0006\3\3\0006\5\0\0'\6\4\0B\3\3\3\14\0\3\0X\5\1ÄK\0\1\0\14\0\1\0X\5\1ÄK\0\1\0009\5\5\4\15\0\5\0X\6\aÄ6\5\6\0009\5\a\5\18\a\2\0009\b\b\0019\b\t\b9\b\n\bB\5\3\0019\5\v\0015\a\f\0=\2\r\a9\b\14\0=\b\15\aB\5\2\1K\0\1\0\14on_attach\15lsp_keymap\fsources\1\0\0\nsetup\vstylua\15formatting\rbuiltins\vinsert\ntable\22enable_stylua_fmt\vcustom\npcall\fnull-ls\26plugins.coding.keymap\frequire\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nc\0\1\6\0\6\1\f9\1\0\0\18\3\1\0009\1\1\0019\4\2\0\23\4\0\0049\5\2\0B\1\4\0026\2\3\0009\2\4\0025\4\5\0\18\5\1\0D\2\3\0\1\4\0\0\a()\a[]\a{}\17tbl_contains\bvim\bcol\bsub\tline\2\15\0\0\1\0\0\0\2+\0\1\0L\0\2\0G\0\1\5\0\3\0\v9\1\0\0\18\3\1\0009\1\1\1'\4\2\0B\1\3\2\v\1\0\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\b.%)\nmatch\14prev_char\15\0\0\1\0\0\0\2+\0\1\0L\0\2\0G\0\1\5\0\3\0\v9\1\0\0\18\3\1\0009\1\1\1'\4\2\0B\1\3\2\v\1\0\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\b.%}\nmatch\14prev_char\15\0\0\1\0\0\0\2+\0\1\0L\0\2\0G\0\1\5\0\3\0\v9\1\0\0\18\3\1\0009\1\1\1'\4\2\0B\1\3\2\v\1\0\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\b.%]\nmatch\14prev_charl\0\1\6\0\5\1\0189\1\0\0\18\3\1\0009\1\1\0019\4\2\0\23\4\0\0049\5\2\0\23\5\0\5B\1\4\2\18\4\1\0009\2\3\1'\5\4\0B\2\3\2\15\0\2\0X\3\2Ä+\2\2\0L\2\2\0+\2\1\0L\2\2\0\r[%w%=%s]\nmatch\bcol\bsub\tline\2˙\1\0\1\a\0\v\00209\1\0\0\18\3\1\0009\1\1\0019\4\2\0\23\4\0\0049\5\2\0\23\5\1\5B\1\4\0029\2\0\0\18\4\2\0009\2\1\0029\5\2\0009\6\2\0B\2\4\2\a\2\3\0X\3\2Ä'\2\4\0X\3\1Ä'\2\3\0\18\5\1\0009\3\5\1'\6\6\0B\3\3\2\15\0\3\0X\4\4Ä'\3\a\0\18\4\2\0&\3\4\3L\3\2\0\18\5\1\0009\3\5\1'\6\b\0B\3\3\2\15\0\3\0X\4\1ÄL\2\2\0\18\5\1\0009\3\5\1'\6\t\0B\3\3\2\15\0\3\0X\4\4Ä'\3\n\0\18\4\2\0&\3\4\3L\3\2\0'\3\4\0L\3\2\0\14<bs><bs>=\6=\b%=$\v<bs> =\b%w$\nmatch\5\6 \bcol\bsub\tline\4\2ô\6\1\0\v\0*\1w6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\4\0B\1\2\0026\2\0\0'\4\5\0B\2\2\0029\3\2\0005\5\6\0005\6\b\0005\a\a\0=\a\t\6=\6\n\5B\3\2\0019\3\v\0004\5\6\0\18\6\1\0'\b\f\0'\t\f\0B\6\3\2\18\b\6\0009\6\r\0063\t\14\0B\6\3\2>\6\1\5\18\6\1\0'\b\15\0'\t\16\0B\6\3\2\18\b\6\0009\6\r\0063\t\17\0B\6\3\2\18\b\6\0009\6\18\0063\t\19\0B\6\3\2\18\b\6\0009\6\20\6'\t\21\0B\6\3\2>\6\2\5\18\6\1\0'\b\22\0'\t\23\0B\6\3\2\18\b\6\0009\6\r\0063\t\24\0B\6\3\2\18\b\6\0009\6\18\0063\t\25\0B\6\3\2\18\b\6\0009\6\20\6'\t\26\0B\6\3\2>\6\3\5\18\6\1\0'\b\27\0'\t\28\0B\6\3\2\18\b\6\0009\6\r\0063\t\29\0B\6\3\2\18\b\6\0009\6\18\0063\t\30\0B\6\3\2\18\b\6\0009\6\20\6'\t\31\0B\6\3\2>\6\4\5\18\6\1\0'\b \0'\t!\0005\n\"\0B\6\4\2\18\b\6\0009\6\r\0069\t#\2B\t\1\0A\6\1\2\18\b\6\0009\6\r\0063\t$\0B\6\3\2\18\b\6\0009\6%\0063\t&\0B\6\3\2\18\b\6\0009\6'\6)\t\0\0B\6\3\2\18\b\6\0009\6\18\0069\t(\2B\t\1\0A\6\1\2\18\b\6\0009\6)\0069\t(\2B\t\1\0A\6\1\0?\6\0\0B\3\2\1K\0\1\0\rwith_del\tnone\24set_end_pair_length\0\20replace_endpair\0\21not_inside_quote\1\5\0\0\bcpp\trust\ago\blua\5\6=\6]\0\0\a ]\a[ \6}\0\0\a }\a{ \6)\fuse_key\0\14with_move\0\a )\a( \0\14with_pair\6 \14add_rules\14ts_config\blua\1\0\0\1\2\0\0\vstring\1\0\1\rcheck_ts\2\25nvim-autopairs.conds\24nvim-autopairs.rule\1\0\1\30enable_check_bracket_line\1\nsetup\19nvim-autopairs\frequire\vÄÄ¿ô\4\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\nø\3\0\0\6\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0004\4\3\0005\5\3\0>\5\1\4=\4\5\3=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\15\23right_trunc_marker\bÔÇ©\20max_name_length\3\14\22max_prefix_length\3\r\24show_tab_indicators\2\25enforce_regular_tabs\1\28show_buffer_close_icons\2\tview\16multiwindow\22buffer_close_icon\bÔôï\15diagnostic\1\20separator_style\nslant\rtab_size\3\20\18modified_icon\bÔÅÄ\27always_show_bufferline\2\22left_trunc_marker\bÔÇ®\15close_icon\bÔôò\1\0\3\fpadding\3\1\rfiletype\rNvimTree\ttext\17Ôêì Explorer\nsetup\15bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    after = { "cmp-path", "cmp-nvim-lsp", "cmp-buffer", "cmp-vsnip", "vim-vsnip", "cmp-cmdline", "cmp-dictionary", "nvim-autopairs" },
    config = { "\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2p\0\2\n\0\4\0\0156\2\0\0009\2\1\0029\2\2\0026\4\0\0009\4\1\0049\4\3\4\18\6\0\0+\a\2\0+\b\2\0+\t\2\0B\4\5\2\18\5\1\0+\6\2\0B\2\4\1K\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvim;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimo\0\2\4\1\a\0\0169\2\0\0009\2\1\2\a\2\2\0X\2\5Ä'\2\4\0=\2\3\1'\2\6\0=\2\5\1L\1\2\0009\2\3\1=\2\5\1-\2\0\0009\3\3\0018\2\3\2=\2\3\1L\1\2\0\3¿\bVim\tmenu\bÓò´\tkind\fcmdline\tname\vsource·\1\0\1\5\3\b\1\31-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\21Ä6\1\2\0009\1\3\0019\1\4\1B\1\1\2\t\1\0\0X\1\5Ä-\1\1\0'\3\5\0'\4\6\0B\1\3\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\a\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\2¿\1¿\rcomplete\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\21select_next_item\fvisible\2®\1\0\0\4\2\a\1\21-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\vÄ6\0\2\0009\0\3\0009\0\4\0)\2ˇˇB\0\2\2\t\0\0\0X\0\4Ä-\0\1\0'\2\5\0'\3\6\0B\0\3\1K\0\1\0\0¿\2¿\5\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2Ë\v\1\0\r\0H\0ì\0016\0\0\0'\2\1\0B\0\2\0023\1\2\0003\2\3\0005\3\4\0\n\0\0\0X\4\3Ä9\4\5\0\v\4\0\0X\4\tÄ6\4\0\0'\6\6\0B\4\2\0029\4\a\4'\6\b\0'\a\t\0B\4\3\0012\0\0ÄK\0\1\0009\4\5\0005\6\r\0005\a\v\0003\b\n\0=\b\f\a=\a\14\0065\a\18\0009\b\15\0009\b\16\b9\b\17\bB\b\1\2=\b\19\a=\a\16\0065\a\21\0005\b\20\0=\b\22\a3\b\23\0=\b\24\a=\a\25\0065\a\29\0009\b\26\0009\n\26\0009\n\27\n)\f¸ˇB\n\2\0025\v\28\0B\b\3\2=\b\30\a9\b\26\0009\n\26\0009\n\27\n)\f\4\0B\n\2\0025\v\31\0B\b\3\2=\b \a9\b\26\0005\n\"\0009\v\26\0009\v!\vB\v\1\2=\v#\n9\v\26\0009\v$\vB\v\1\2=\v%\nB\b\2\2=\b&\a9\b\26\0009\b'\b5\n*\0009\v(\0009\v)\v=\v+\nB\b\2\2=\b,\a9\b\26\0003\n-\0005\v.\0B\b\3\2=\b/\a9\b\26\0003\n0\0005\v1\0B\b\3\2=\b2\a=\a\26\0064\a\4\0005\b3\0>\b\1\a5\b4\0>\b\2\a5\b5\0>\b\3\a=\a6\0065\a7\0=\a8\6B\4\2\0019\4\5\0009\0049\0045\6:\0005\a>\0004\b\4\0005\t;\0>\t\1\b5\t<\0>\t\2\b5\t=\0>\t\3\b=\b6\aB\4\3\0019\4\5\0009\4?\4'\6@\0005\aB\0009\b\26\0009\bA\b9\b?\bB\b\1\2=\b\26\a4\b\3\0005\tC\0>\t\1\b=\b6\aB\4\3\0019\4\5\0009\4?\4'\6D\0005\aE\0009\b\26\0009\bA\b9\b?\bB\b\1\2=\b\26\a9\b\15\0009\b6\b4\n\3\0005\vF\0>\v\1\n4\v\3\0005\fG\0>\f\1\vB\b\3\2=\b6\aB\4\3\0012\0\0ÄK\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\vpreset\6/\fcmdline\1\0\0\1\0\1\tname\nvsnip\1\0\1\tname\tpath\1\0\2\19keyword_length\3\2\tname\15dictionary\1\5\0\0\rmarkdown\rasciidoc\ttext\14gitcommit\rfiletype\17experimental\1\0\1\15ghost_text\2\fsources\1\0\1\tname\tpath\1\0\1\tname\nvsnip\1\0\2\rpriority\3c\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-d>\1\3\0\0\6i\6c\n<C-u>\1\0\0\1\3\0\0\6i\6c\16scroll_docs\fmapping\15formatting\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\18documentation\1\0\0\rbordered\vwindow\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\rnvim-cmp\26fail to load nvim-cmp\ninfoL\17editor.utils\nsetup\1\0\25\15EnumMember\bÔÖù\16Constructor\bÔê£\tEnum\bÔÖù\vStruct\bÔÜ≥\14Interface\bÔÉ®\nEvent\bÔÉß\tText\bÓòí\rFunction\bÔûî\rOperator\bÔöî\rVariable\bÔñï\vFolder\bÔùä\18TypeParameter\bÔô±\tUnit\bÓàü\nValue\bÔ¢ü\vModule\bÔíá\fKeyword\bÔ†ä\tFile\bÔúò\rConstant\bÔ£æ\fSnippet\bÔëè\nClass\bÔ¥Ø\vMethod\bÔö¶\nColor\bÔ£ó\rProperty\bÔ∞†\nField\bÔõº\14Reference\bÔíÅ\0\0\bcmp\frequire\0" },
    load_after = {
      ["friendly-snippets"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    commands = { "ColorizerToggle", "ColorizerAttachToBuffer" },
    config = { "\27LJ\2\nX\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\bcss\1\0\1\vrgb_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\ng\0\0\5\0\a\0\f6\0\0\0009\0\1\0009\0\2\0'\2\3\0006\3\0\0009\3\1\0039\3\4\3B\3\1\2'\4\5\0&\3\4\3'\4\6\0D\0\4\0\tfile\6/\vgetcwd\25Path to executable: \ninput\afn\bvimﬁ\2\1\0\5\0\15\0\0296\0\0\0'\2\1\0B\0\2\0029\1\2\0005\2\4\0=\2\3\0019\1\5\0004\2\3\0005\3\a\0003\4\b\0=\4\t\0034\4\0\0=\4\n\3>\3\1\2=\2\6\0019\1\5\0009\2\5\0009\2\6\2=\2\v\0019\1\5\0009\2\5\0009\2\6\2=\2\f\0016\1\0\0'\3\r\0B\1\2\0029\1\14\1B\1\1\1K\0\1\0\nsetup\ndapui\trust\6c\targs\fprogram\0\1\0\6\ttype\tlldb\tname\vLaunch\bcwd\23${workspaceFolder}\16stopOnEntry\1\frequest\vlaunch\18runInTerminal\2\bcpp\19configurations\1\0\3\ttype\15executable\tname\tlldb\fcommand\25/usr/bin/lldb-vscode\tlldb\radapters\bdap\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lspconfig"] = {
    after = { "null-ls.nvim", "trouble.nvim", "fidget.nvim", "lspsaga.nvim" },
    config = { "\27LJ\2\n?\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0$plugins.coding.config.lspconfig\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n2\0\0\4\0\3\0\0066\0\0\0006\1\2\0'\3\1\0B\1\2\2=\1\1\0K\0\1\0\frequire\vnotify\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-rooter.lua"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/nvim-rooter.lua",
    url = "https://github.com/notjedi/nvim-rooter.lua"
  },
  ["nvim-spectre"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/nvim-spectre",
    url = "https://github.com/windwp/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeRefresh", "NvimTreeToggle" },
    config = { "\27LJ\2\nö\f\0\0\n\0@\0R6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\tÄ6\2\3\0009\2\4\2\18\4\1\0006\5\3\0009\5\5\0059\5\6\0059\5\a\5B\2\3\1K\0\1\0006\2\1\0'\4\b\0B\2\2\0029\2\t\0025\4\n\0005\5\v\0=\5\f\0045\5\r\0=\5\14\0045\5\15\0005\6\16\0=\6\17\5=\5\18\0045\5\19\0004\6\0\0=\6\20\5=\5\21\0045\5\22\0004\6\0\0=\6\23\5=\5\24\0045\5\25\0=\5\26\0045\5\27\0005\6\28\0=\6\29\5=\5\30\0045\5 \0005\6\31\0=\6!\0055\6\"\0005\a#\0005\b%\0005\t$\0=\t&\b5\t'\0=\t(\b=\b)\a=\a*\6=\6+\5=\5,\0045\5-\0005\6.\0005\a/\0=\a\17\6=\0060\0055\0061\0005\a2\0=\a3\0065\a4\0005\b5\0=\b\26\a5\b6\0=\b7\a=\a8\6=\6\17\5=\0059\0045\5:\0005\6;\0004\a\3\0005\b<\0>\b\1\a=\a=\6=\6>\5=\5?\4B\2\2\1K\0\1\0\tview\rmappings\tlist\1\0\2\bkey\6?\vaction\16toggle_help\1\0\1\16custom_only\1\1\0\2\nwidth\3\25\tside\tleft\rrenderer\vglyphs\vfolder\1\0\6\fdefault\bÔêì\nempty\bÔÑî\17symlink_open\bÓóæ\fsymlink\bÔíÇ\15empty_open\bÔêî\topen\bÔ±Æ\1\0\a\runmerged\bÓúß\frenamed\bÔ•î\fignored\bÔë¥\14untracked\bÔÅß\vstaged\bÔôº\runstaged\bÔ£™\fdeleted\bÔëò\1\0\2\fsymlink\bÔíÅ\fdefault\bÓòí\tshow\1\0\4\bgit\2\tfile\2\17folder_arrow\1\vfolder\2\1\0\1\18webdev_colors\2\19indent_markers\1\0\3\vcorner\t‚îî \tnone\a  \tedge\t‚îÇ \1\0\1\venable\1\1\0\4\25root_folder_modifier\a:t\17add_trailing\1\18highlight_git\2\27highlight_opened_files\tbold\factions\14open_file\18window_picker\fexclude\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\venable\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\1\0\2\18resize_window\1\17quit_on_open\1\15change_dir\1\0\0\1\0\2\venable\2\vglobal\1\ffilters\vcustom\1\4\0\0\f^\\.git$\17node_modules\14^\\.cache$\1\0\1\rdotfiles\2\bgit\1\0\1\vignore\1\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\venable\1\15update_cwd\1\16diagnostics\nicons\1\0\4\fwarning\bÔÅ±\nerror\bÔÅó\thint\bÔÅ™\tinfo\bÔÅö\1\0\1\venable\1\23hijack_directories\1\0\2\venable\2\14auto_open\2\23ignore_ft_on_setup\1\3\0\0\rstartify\14dashboard\1\0\6\18disable_netrw\2\17hijack_netrw\2\18open_on_setup\1\16open_on_tab\1\18hijack_cursor\2\15update_cwd\2\nsetup\14nvim-tree\nERROR\vlevels\blog\vnotify\bvim\21nvim-tree.config\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "vim-matchup", "nvim-treesitter-textobjects", "nvim-ts-autotag" },
    config = { "\27LJ\2\nü\4\0\0\6\0\19\0\0246\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\5\0006\3\0\0'\5\3\0B\3\2\0029\3\4\3=\3\6\0025\3\a\0=\3\b\0025\3\t\0=\3\n\0025\3\v\0=\3\f\0025\3\16\0005\4\r\0005\5\14\0=\5\15\4=\4\17\3=\3\18\2B\0\2\1K\0\1\0\16textobjects\vselect\1\0\0\fkeymaps\1\0\r\aab\17@block.outer\aip\21@parameter.inner\aif\20@function.inner\aas\21@statement.outer\aic\17@class.inner\aaf\20@function.outer\aio\21@condition.inner\ail\16@call.inner\aao\21@condition.outer\aal\16@call.outer\aap\21@parameter.outer\aib\17@block.inner\aac\17@class.outer\1\0\2\venable\2\14lookahead\2\fautotag\1\0\1\venable\2\fmatchup\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\18treesitter_ft\26plugins.coding.config\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["rust-tools.nvim"] = {
    config = { "\27LJ\2\n@\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0%plugins.coding.config.rust_tools\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["sort.nvim"] = {
    commands = { "Sort" },
    config = { "\27LJ\2\n6\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\tsort\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/sort.nvim",
    url = "https://github.com/sQVe/sort.nvim"
  },
  ["splitjoin.vim"] = {
    keys = { { "n", "gJ" }, { "n", "gS" } },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/splitjoin.vim",
    url = "https://github.com/AndrewRadev/splitjoin.vim"
  },
  ["symbols-outline.nvim"] = {
    commands = { "SymbolsOutline" },
    config = { "\27LJ\2\n˝\n\0\0\4\0>\0A6\0\0\0009\0\1\0005\1\3\0005\2\4\0=\2\5\0014\2\0\0=\2\6\0014\2\0\0=\2\a\0015\2\t\0005\3\b\0=\3\n\0025\3\v\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0=\3\18\0025\3\19\0=\3\20\0025\3\21\0=\3\22\0025\3\23\0=\3\24\0025\3\25\0=\3\26\0025\3\27\0=\3\28\0025\3\29\0=\3\30\0025\3\31\0=\3 \0025\3!\0=\3\"\0025\3#\0=\3$\0025\3%\0=\3&\0025\3'\0=\3(\0025\3)\0=\3*\0025\3+\0=\3,\0025\3-\0=\3.\0025\3/\0=\0030\0025\0031\0=\0032\0025\0033\0=\0034\0025\0035\0=\0036\0025\0037\0=\0038\0025\0039\0=\3:\0025\3;\0=\3<\2=\2=\1=\1\2\0K\0\1\0\fsymbols\18TypeParameter\1\0\2\ticon\tùôè\ahl\16TSParameter\rOperator\1\0\2\ticon\6+\ahl\15TSOperator\nEvent\1\0\2\ticon\tüó≤\ahl\vTSType\vStruct\1\0\2\ticon\bÔ¥Ø\ahl\vTSType\15EnumMember\1\0\2\ticon\bÔÖù\ahl\fTSField\tNull\1\0\2\ticon\bÔ≥†\ahl\vTSType\bKey\1\0\2\ticon\bÔ†Ö\ahl\vTSType\vObject\1\0\2\ticon\b‚¶ø\ahl\vTSType\nArray\1\0\2\ticon\bÔô©\ahl\15TSConstant\fBoolean\1\0\2\ticon\bÔÆí\ahl\14TSBoolean\vNumber\1\0\2\ticon\bÔ¢ü\ahl\rTSNumber\vString\1\0\2\ticon\bÔÆú\ahl\rTSString\rConstant\1\0\2\ticon\bÓà¨\ahl\15TSConstant\rVariable\1\0\2\ticon\bÓûõ\ahl\15TSConstant\rFunction\1\0\2\ticon\bÔûî\ahl\15TSFunction\14Interface\1\0\2\ticon\bÔÉ®\ahl\vTSType\tEnum\1\0\2\ticon\bÔÖù\ahl\vTSType\16Constructor\1\0\2\ticon\bÓàè\ahl\18TSConstructor\nField\1\0\2\ticon\bÔÄ¨\ahl\fTSField\rProperty\1\0\2\ticon\bÓò§\ahl\rTSMethod\vMethod\1\0\2\ticon\bÔûî\ahl\rTSMethod\nClass\1\0\2\ticon\bÔ¥Ø\ahl\vTSType\fPackage\1\0\2\ticon\bÔ£ñ\ahl\16TSNamespace\14Namespace\1\0\2\ticon\bÔô®\ahl\16TSNamespace\vModule\1\0\2\ticon\bÔö¶\ahl\16TSNamespace\tFile\1\0\0\1\0\2\ticon\bÔÖõ\ahl\nTSURI\21symbol_blacklist\18lsp_blacklist\fkeymaps\1\0\6\19focus_location\6o\nclose\n<Esc>\17hover_symbol\14<C-space>\18rename_symbol\6r\17code_actions\6a\18goto_location\t<Cr>\1\0\a\17show_numbers\1\26show_relative_numbers\1\24show_symbol_details\2\27highlight_hovered_item\2\16show_guides\2\17auto_preview\2\rposition\nright\20symbols_outline\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n«\t\0\0\t\0)\0D6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\4#\0005\5\5\0005\6\4\0=\6\6\0055\6\b\0005\a\a\0=\a\t\0065\a\n\0=\a\v\6=\6\f\0056\6\1\0'\b\r\0B\6\2\0029\6\14\6=\6\15\0054\6\0\0=\6\16\0056\6\1\0'\b\r\0B\6\2\0029\6\17\6=\6\18\0055\6\19\0=\6\20\0054\6\0\0=\6\21\0055\6\22\0=\6\23\0055\6\24\0=\6\25\0056\6\1\0'\b\26\0B\6\2\0029\6\27\0069\6\28\6=\6\29\0056\6\1\0'\b\26\0B\6\2\0029\6\30\0069\6\28\6=\6\31\0056\6\1\0'\b\26\0B\6\2\0029\6 \0069\6\28\6=\6!\0056\6\1\0'\b\26\0B\6\2\0029\6\"\6=\6\"\5=\5$\0045\5&\0005\6%\0=\6'\5=\5(\4B\2\2\1K\0\1\0\15extensions\bfzf\1\0\0\1\0\4\28override_generic_sorter\1\25override_file_sorter\2\14case_mode\15smart_case\nfuzzy\2\rdefaults\1\0\0\27buffer_previewer_maker\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚ï≠\b‚ïÆ\b‚ïØ\b‚ï∞\vborder\17path_display\1\2\0\0\rabsolute\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\16file_sorter\19get_fuzzy_file\22telescope.sorters\18layout_config\rvertical\1\0\1\vmirror\1\15horizontal\1\0\3\nwidth\4◊«¬Î\3äÆØˇ\3\vheight\4ö≥ÊÃ\tô≥¶ˇ\3\19preview_cutoff\3x\1\0\2\18preview_width\4ö≥ÊÃ\tô≥Üˇ\3\20prompt_position\btop\22vimgrep_arguments\1\0\n\21sorting_strategy\15descending\18prompt_prefix\n ÔÄÇ \20selection_caret\a  \17entry_prefix\a  \17initial_mode\vinsert\23selection_strategy\nreset\20layout_strategy\tflex\rwinblend\3\0\19color_devicons\2\ruse_less\2\1\b\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\nsetup\14telescope\frequire\npcall\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    commands = { "ToggleTerm" },
    config = { "\27LJ\2\ny\0\1\2\0\6\1\0159\1\0\0\a\1\1\0X\1\3Ä)\1\15\0L\1\2\0X\1\bÄ9\1\0\0\a\1\2\0X\1\5Ä6\1\3\0009\1\4\0019\1\5\1\24\1\0\1L\1\2\0K\0\1\0\fcolumns\6o\bvim\rvertical\15horizontal\14directionµÊÃô\19ô≥Ê˛\3Ï\2\1\0\5\0\14\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\0024\3\0\0=\3\6\0026\3\a\0009\3\b\0039\3\t\3=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\2B\0\2\1K\0\1\0\15float_opts\15highlights\1\0\2\vborder\vNormal\15background\vNormal\1\0\2\vborder\vsingle\rwinblend\3\3\nshell\6o\bvim\20shade_filetypes\tsize\1\0\b\14direction\15horizontal\22terminal_mappings\2\17persist_size\2\18close_on_exit\2\20insert_mappings\2\17hide_numbers\2\20shade_terminals\2\20start_in_insert\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["trouble.nvim"] = {
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-dispatch"] = {
    commands = { "Dispatch" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/vim-dispatch",
    url = "https://github.com/tpope/vim-dispatch"
  },
  ["vim-easy-align"] = {
    commands = { "EasyAlign" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-fugitive"] = {
    commands = { "G", "Git", "Ggrep", "Gdiffsplit", "GBrowse" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-markdown-toc"] = {
    commands = { "GenTocGFM" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/vim-markdown-toc",
    url = "https://github.com/mzlogin/vim-markdown-toc"
  },
  ["vim-matchup"] = {
    after_files = { "/root/.local/share/nvim/site/pack/packer/opt/vim-matchup/after/plugin/matchit.vim" },
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/root/.local/share/nvim/site/pack/packer/opt/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-mundo"] = {
    commands = { "MundoToggle" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/vim-mundo",
    url = "https://github.com/simnalamburt/vim-mundo"
  },
  ["vim-repeat"] = {
    keys = { { "n", "." } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-sleuth",
    url = "https://github.com/tpope/vim-sleuth"
  },
  ["vim-surround"] = {
    config = { "\27LJ\2\n¶\1\0\0\a\0\n\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0\18\1\0\0'\3\3\0'\4\4\0'\5\5\0005\6\6\0B\1\5\1\18\1\0\0'\3\3\0'\4\a\0'\5\b\0005\6\t\0B\1\5\1K\0\1\0\1\0\1\fnoremap\1\20<Plug>VSurround\ags\1\0\1\fnoremap\1\23<Plug>Lightspeed_S\6S\6x\bmap\17editor.utils\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-table-mode"] = {
    commands = { "TableModeToggle" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/vim-table-mode",
    url = "https://github.com/dhruvasagar/vim-table-mode"
  },
  ["vim-visual-multi"] = {
    keys = { { "", "u" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  },
  ["vim-vsnip"] = {
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nå\18\0\0\b\0J\0_6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\nÄ6\2\1\0'\4\3\0B\2\2\0029\2\4\2'\4\5\0\18\5\1\0&\4\5\4'\5\2\0B\2\3\1K\0\1\0009\2\6\0015\4\a\0005\5\t\0005\6\b\0=\6\n\0055\6\v\0=\6\f\0055\6\r\0=\6\14\5=\5\15\4B\2\2\0015\2\17\0005\3\16\0=\3\18\0025\3\19\0005\4\20\0005\5\21\0=\5\22\0045\5\23\0=\5\24\4=\4\22\3=\3\25\0025\3\26\0005\4\27\0=\4\28\3=\3\29\0025\3\30\0005\4\31\0=\4\28\3=\3 \0025\3!\0=\3\"\0025\3$\0005\4#\0=\4\24\0035\4%\0=\4&\0035\4'\0=\4(\0035\4)\0=\4*\0035\4+\0=\4,\0035\4-\0=\4.\0035\4/\0=\0040\0035\0041\0=\4\22\0035\0042\0=\0043\0035\0044\0=\0045\0035\0046\0=\0047\0035\0048\0=\0049\0035\4:\0=\4;\0035\4<\0=\4=\0035\4>\0=\4?\0035\4@\0=\4A\3=\3B\0025\3D\0005\4C\0=\4E\3=\3F\0029\3G\1\18\5\2\0B\3\2\0015\3H\0009\4G\1\18\6\3\0005\aI\0B\4\3\1K\0\1\0\1\0\2\vprefix\5\tmode\6o\1\0\14\aab\19block (AROUND)\aip\22parameter (INNER)\aao\23condition (AROUND)\aas\23statement (AROUND)\aic\18class (INNER)\aaf\22function (AROUND)\aif\21function (INNER)\aih\rgit hunk\aio\22condition (INNER)\aal\27function call (AROUND)\ail\26function call (INNER)\aap\23parameter (AROUND)\aib\18block (INNER)\aac\19class (AROUND)\rregister\f<space>\6e\1\0\0\1\2\0\0\22Toggle Easy Align\6g\6R\1\2\0\0\20View References\6J\1\2\0\0%Join multiple line into one line\6S\1\2\0\0(Split current line to multiple line\6f\1\2\0\0\26Format current buffer\6q\1\2\0\0\16Set loclist\6t\1\2\0\0\28Jump to type definition\6m\1\2\0\0\"Jump to symbol implementation\6D\1\2\0\0\30Jump to symbol definition\1\2\0\0\26Rename current symbol\6k\1\2\0\0 Jump to previous diagnostic\6j\1\2\0\0\28Jump to next diagnostic\6o\1\2\0\0%Show diagnostic for current line\6s\1\2\0\0\24Open signature help\6h\1\2\0\0\18View document\6d\1\2\0\0\23Preview definition\1\0\0\1\2\0\0\28Trigger LSP code action\n<C-t>\1\0\3\6l\rNext tab\6h\17Previous tab\6n\fNew tab\agb\1\2\0\0\31Comment with block comment\1\0\1\tname\22+Comments (Block)\agc\6c\1\2\0\0\25Comment current line\1\0\1\tname\21+Comments (Line)\6;\6a\1\2\0\0\20Trigger actions\6r\1\2\0\0\18Open runnable\1\0\1\tname0Rust keymap (Available in Rust buffer only)\1\0\r\6p\27Enter buffer pick mode\tname\21+Quick Operation\6q\24Quit current buffer\6t\27Open tree file manager\6d&Open cmdline to dispatch commands\6h\24Jump to left window\6g\26Open git status panel\6w\24Save buffer to file\6k\25Jump to upper window\6f\31Open quick find file panel\6s\25Open live grep panel\6j\25Jump to below window\6l\25Jump to right window\agi\1\0\0\1\0\16\6c\26Commit staged changes\tname\t+Git\6h\19Toggle deleted\6u\21Undo staged hunk\6D\22Toggle diff panel\6S\25Stage current buffer\6P\29Create a git push prompt\6p\25Preview current diff\6k\27Jump to previouse hunk\6j\22Jump to next hunk\6b+Toggle inline git blame (Virtual text)\6d\22Toggle diff panel\6r\23Reset current hunk\6s\23Stage current hunk\6B#Toggle git blame (Popup Panel)\6R\23Reset whole buffer\23triggers_blacklist\6v\1\3\0\0\6j\6k\6i\1\3\0\0\6j\6k\6n\1\0\0\1\6\0\0\6/\6:\6<\6>\6x\1\0\1\rtriggers\tauto\nsetup\29which key fail to load: \verrorL\17editor.utils\14which-key\frequire\npcall\0" },
    keys = { { "", "g" }, { "", "v" }, { "", "c" }, { "", "d" }, { "", "z" }, { "", ";" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["wildfire.vim"] = {
    keys = { { "n", "<Enter>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/wildfire.vim",
    url = "https://github.com/gcmt/wildfire.vim"
  },
  ["winshift.nvim"] = {
    commands = { "WinShift" },
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rwinshift\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/winshift.nvim",
    url = "https://github.com/sindrets/winshift.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^dap"] = "nvim-dap",
  ["^dapui"] = "nvim-dap-ui",
  ["^dial"] = "dial.nvim",
  ["^lsp_lines"] = "lsp_lines.nvim",
  ["^lspconfig"] = "nvim-lspconfig",
  ["^nvim%-rooter"] = "nvim-rooter.lua",
  ["^nvim%-tree"] = "nvim-tree.lua",
  ["^nvim%-web%-devicons"] = "nvim-web-devicons",
  ["^spectre"] = "nvim-spectre",
  ["^telescope"] = "telescope.nvim",
  ["^vim%.ui"] = "dressing.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Conditional loads
time([[Conditional loading of github-nvim-theme]], true)
  require("packer.load")({"github-nvim-theme"}, {}, _G.packer_plugins)
time([[Conditional loading of github-nvim-theme]], false)
time([[Conditional loading of kanagawa.nvim]], true)
  require("packer.load")({"kanagawa.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of kanagawa.nvim]], false)
time([[Conditional loading of neovim-deus]], true)
  require("packer.load")({"neovim-deus"}, {}, _G.packer_plugins)
time([[Conditional loading of neovim-deus]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ToggleTerm lua require("packer.load")({'toggleterm.nvim'}, { cmd = "ToggleTerm", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeRefresh lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeRefresh", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file WinShift lua require("packer.load")({'winshift.nvim'}, { cmd = "WinShift", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Sort lua require("packer.load")({'sort.nvim'}, { cmd = "Sort", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file MundoToggle lua require("packer.load")({'vim-mundo'}, { cmd = "MundoToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TableModeToggle lua require("packer.load")({'vim-table-mode'}, { cmd = "TableModeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file EasyAlign lua require("packer.load")({'vim-easy-align'}, { cmd = "EasyAlign", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file GenTocGFM lua require("packer.load")({'vim-markdown-toc'}, { cmd = "GenTocGFM", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DiffviewFileHistory lua require("packer.load")({'diffview.nvim'}, { cmd = "DiffviewFileHistory", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DiffviewOpen lua require("packer.load")({'diffview.nvim'}, { cmd = "DiffviewOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Dashboard lua require("packer.load")({'dashboard-nvim'}, { cmd = "Dashboard", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SymbolsOutline lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutline", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file G lua require("packer.load")({'vim-fugitive'}, { cmd = "G", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Git lua require("packer.load")({'vim-fugitive'}, { cmd = "Git", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Ggrep lua require("packer.load")({'vim-fugitive'}, { cmd = "Ggrep", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gdiffsplit lua require("packer.load")({'vim-fugitive'}, { cmd = "Gdiffsplit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ColorizerToggle lua require("packer.load")({'nvim-colorizer.lua'}, { cmd = "ColorizerToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ColorizerAttachToBuffer lua require("packer.load")({'nvim-colorizer.lua'}, { cmd = "ColorizerAttachToBuffer", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file GBrowse lua require("packer.load")({'vim-fugitive'}, { cmd = "GBrowse", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Dispatch lua require("packer.load")({'vim-dispatch'}, { cmd = "Dispatch", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[nnoremap <silent> <C-b> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-b>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> u <cmd>lua require("packer.load")({'vim-visual-multi'}, { keys = "u", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> t <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "t", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> g <cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "g", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> gS <cmd>lua require("packer.load")({'splitjoin.vim'}, { keys = "gS", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> gbc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gbc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> . <cmd>lua require("packer.load")({'vim-repeat'}, { keys = ".", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> t <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "t", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <C-e> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-e>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> gb <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gb", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> S <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "S", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <Enter> <cmd>lua require("packer.load")({'wildfire.vim'}, { keys = "<lt>Enter>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <C-k> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-k>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> v <cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "v", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> T <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "T", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <C-f> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-f>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> d <cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "d", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> / <cmd>lua require("packer.load")({'friendly-snippets'}, { keys = "/", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> F <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "F", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> gcc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gcc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> f <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "f", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> S <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "S", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> s <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "s", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <C-y> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-y>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> c <cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "c", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> T <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "T", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> s <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "s", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> f <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "f", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> gJ <cmd>lua require("packer.load")({'splitjoin.vim'}, { keys = "gJ", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> F <cmd>lua require("packer.load")({'lightspeed.nvim'}, { keys = "F", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> gc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <C-j> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-j>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> ; <cmd>lua require("packer.load")({'which-key.nvim'}, { keys = ";", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> : <cmd>lua require("packer.load")({'friendly-snippets'}, { keys = ":", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> z <cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "z", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType rust ++once lua require("packer.load")({'nvim-treesitter', 'rust-tools.nvim', 'nvim-lspconfig'}, { ft = "rust" }, _G.packer_plugins)]]
vim.cmd [[au FileType lua ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "lua" }, _G.packer_plugins)]]
vim.cmd [[au FileType yaml ++once lua require("packer.load")({'nvim-treesitter', 'nvim-lspconfig'}, { ft = "yaml" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType c ++once lua require("packer.load")({'nvim-treesitter', 'nvim-lspconfig'}, { ft = "c" }, _G.packer_plugins)]]
vim.cmd [[au FileType vim ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "vim" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'nvim-treesitter', 'nvim-lspconfig'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType bash ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "bash" }, _G.packer_plugins)]]
vim.cmd [[au FileType comment ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "comment" }, _G.packer_plugins)]]
vim.cmd [[au FileType fish ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "fish" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType nix ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "nix" }, _G.packer_plugins)]]
vim.cmd [[au FileType toml ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "toml" }, _G.packer_plugins)]]
vim.cmd [[au FileType go ++once lua require("packer.load")({'nvim-treesitter', 'nvim-lspconfig'}, { ft = "go" }, _G.packer_plugins)]]
vim.cmd [[au FileType cpp ++once lua require("packer.load")({'nvim-treesitter', 'nvim-lspconfig'}, { ft = "cpp" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'nvim-treesitter', 'nvim-lspconfig'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType json ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "json" }, _G.packer_plugins)]]
vim.cmd [[au FileType python ++once lua require("packer.load")({'nvim-treesitter', 'nvim-lspconfig'}, { ft = "python" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'packer.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead Cargo.toml ++once lua require("packer.load")({'crates.nvim'}, { event = "BufRead Cargo.toml" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'friendly-snippets', 'vim-visual-multi'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au WinEnter * ++once lua require("packer.load")({'focus.nvim'}, { event = "WinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au UIEnter * ++once lua require("packer.load")({'nvim-notify', 'galaxyline.nvim'}, { event = "UIEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'indent-blankline.nvim', 'gitsigns.nvim', 'nvim-bufferline.lua', 'vim-surround'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
