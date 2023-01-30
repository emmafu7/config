(module config.plugin.telescope
  {autoload {nvim aniseed.nvim
             telescope telescope
             themes telescope.themes}})

(telescope.setup {:defaults {:file_ignore_patterns ["node_modules"]}
                  :extensions {:ui-select {1 (themes.get_dropdown {})}}
                  :pickers {:find_files {:find_command ["rg" "--files" "--iglob" "!.git" "--hidden"]}}})

(telescope.load_extension "ui-select")

(nvim.set_keymap :n :<leader>f ":lua require('telescope.builtin').find_files()<CR>" {:noremap true})
(nvim.set_keymap :n :<leader>s ":lua require('telescope.builtin').live_grep()<CR>" {:noremap true})
(nvim.set_keymap :n :<leader>b ":lua require('telescope.builtin').buffers()<CR>" {:noremap true})
(nvim.set_keymap :n :<leader>h ":lua require('telescope.builtin').help_tags()<CR>" {:noremap true})
