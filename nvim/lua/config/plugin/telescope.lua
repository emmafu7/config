local _2afile_2a = "/Users/emmafu/.config/nvim/fnl/config/plugin/telescope.fnl"
local _2amodule_name_2a = "config.plugin.telescope"
local _2amodule_2a
do
  package.loaded[_2amodule_name_2a] = {}
  _2amodule_2a = package.loaded[_2amodule_name_2a]
end
local _2amodule_locals_2a
do
  _2amodule_2a["aniseed/locals"] = {}
  _2amodule_locals_2a = (_2amodule_2a)["aniseed/locals"]
end
local autoload = (require("aniseed.autoload")).autoload
local nvim, telescope, themes = autoload("aniseed.nvim"), autoload("telescope"), autoload("telescope.themes")
do end (_2amodule_locals_2a)["nvim"] = nvim
_2amodule_locals_2a["telescope"] = telescope
_2amodule_locals_2a["themes"] = themes
telescope.setup({defaults = {file_ignore_patterns = {"node_modules"}}, extensions = {["ui-select"] = {themes.get_dropdown({})}}, pickers = {find_files = {find_command = {"rg", "--files", "--iglob", "!.git", "--hidden"}}}})
telescope.load_extension("ui-select")
nvim.set_keymap("n", "<leader>f", ":lua require('telescope.builtin').find_files()<CR>", {noremap = true})
nvim.set_keymap("n", "<leader>s", ":lua require('telescope.builtin').live_grep()<CR>", {noremap = true})
nvim.set_keymap("n", "<leader>b", ":lua require('telescope.builtin').buffers()<CR>", {noremap = true})
nvim.set_keymap("n", "<leader>h", ":lua require('telescope.builtin').help_tags()<CR>", {noremap = true})
return _2amodule_2a