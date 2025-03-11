return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup({
      theme = 'doom',
      config = {
        header = {
  [[                                           ]],
  [[                                           ]],
  [[                                           ]],
  [[                                           ]],
  [[ ██▓     ██▓ ▄████▄   ██░ ██   ██████      ]],
  [[▓██▒    ▓██▒▒██▀ ▀█  ▓██░ ██▒▒██    ▒      ]],
  [[▒██░    ▒██▒▒▓█    ▄ ▒██▀▀██░░ ▓██▄        ]],
  [[▒██░    ░██░▒▓▓▄ ▄██▒░▓█ ░██   ▒   ██▒     ]],
  [[░██████▒░██░▒ ▓███▀ ░░▓█▒░██▓▒██████▒▒     ]],
  [[░ ▒░▓  ░░▓  ░ ░▒ ▒  ░ ▒ ░░▒░▒▒ ▒▓▒ ▒ ░     ]],
  [[░ ░ ▒  ░ ▒ ░  ░  ▒    ▒ ░▒░ ░░ ░▒  ░ ░     ]],
  [[  ░ ░    ▒ ░░         ░  ░░ ░░  ░  ░       ]],
  [[    ░  ░ ░  ░ ░       ░  ░  ░      ░       ]],
  [[            ░                               ]],
  [[▄▄▄█████▓ ▒█████   ███▄ ▄███▓ ▄▄▄▄         ]],
  [[▓  ██▒ ▓▒▒██▒  ██▒▓██▒▀█▀ ██▒▓█████▄       ]],
  [[▒ ▓██░ ▒░▒██░  ██▒▓██    ▓██░▒██▒ ▄██      ]],
  [[░ ▓██▓ ░ ▒██   ██░▒██    ▒██ ▒██░█▀        ]],
  [[  ▒██▒ ░ ░ ████▓▒░▒██▒   ░██▒░▓█  ▀█▓      ]],
  [[  ▒ ░░   ░ ▒░▒░▒░ ░ ▒░   ░  ░░▒▓███▀▒      ]],
  [[    ░      ░ ▒ ▒░ ░  ░      ░▒░▒   ░       ]],
  [[  ░      ░ ░ ░ ▒  ░      ░    ░    ░       ]],
  [[             ░ ░         ░    ░            ]],
  [[                                           ]],
}, -- Seu cabeçalho
        center = {
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = 'Find File           ',
            desc_hl = 'String',
            key = 'b',
            keymap = 'SPC f f',
            key_hl = 'Number',
            key_format = ' %s', -- Remove o padrão `[]`
            action = 'lua print(2)'
          },
          {
            icon = ' ',
            desc = 'Find Dotfiles',
            key = 'f',
            keymap = 'SPC f d',
            key_format = ' %s', -- Remove o padrão `[]`
            action = 'lua print(3)'
          },
        },
        footer = {} -- Seu rodapé
      }
    })
  end,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}