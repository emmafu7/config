local _2afile_2a = "/Users/emmafu/.config/nvim/fnl/config/plugin/flyboy.fnl"
local _2amodule_name_2a = "config.plugin.flyboy"
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
local flyboy = autoload("flyboy.config")
do end (_2amodule_locals_2a)["flyboy"] = flyboy
flyboy.setup({defaults = {model = "gpt-4", url = "https://amperity-ue2.openai.azure.com/openai/deployments/gpt-4-2023-08-04/chat/completions?api-version=2023-03-15-preview", headers = {Api_Key = vim.env.OPENAI_API_KEY, Content_Type = "application/json"}}})
return _2amodule_2a