require'telescope'.setup {
    pickers = {
        find_files = {
            theme = "dropdown"
        }
    },
    extensions = {
        fzy_native = {
          override_generic_sorter = false,
          override_file_sorter = true,
        },
        project = {
              base_dirs = {
                '~/.software',
                '~/.software/.dev/',
                {path = '~/Documents/.latex/'}
              },
              hidden_files = true
        },
    },
}
require'telescope'.load_extension('fzy_native')
require'telescope'.load_extension('project')
require'telescope'.load_extension('projects')
require'telescope'.load_extension('file_browser');
