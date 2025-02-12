--[[ 
hardmode.lua - Neovim: HARD MODE!!!
Author:       Kolter Saruey <wksaurey@gmail.com>
Contributers: dusans, Matt Parrott <parrott.matt@gmail.com>
Version:      1.0
]]

Hardmodemsg = "Neovim Hard-Mode |':call EasyMode()' to exit|"
Hardmode_on = false

function HardMode()
    vim.o.backspace = ''

    vim.keymap.set('n', '<Left>', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('n', '<Right>', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('n', '<Up>', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('n', '<Down>', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('n', '<PageUp>', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('n', '<PageDown>', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })

    vim.keymap.set('i', '<Left>', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('i', '<Right>', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('i', '<Up>', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('i', '<Down>', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('i', '<PageUp>', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('i', '<PageDown>', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })

    vim.keymap.set('v', '<Left>', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('v', '<Right>', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('v', '<Up>', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('v', '<Down>', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('v', '<PageUp>', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('v', '<PageDown>', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })

    vim.keymap.set('v', 'h', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('v', 'j', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('v', 'k', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('v', 'l', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('v', '-', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('v', '+', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })

    vim.keymap.set('n', 'h', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('n', 'j', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('n', 'k', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('n', 'l', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('n', '-', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })
    vim.keymap.set('n', '+', '<Esc>:echo Hardmodemsg<CR>', { noremap=true })

    Hardmode_on = true
    print(Hardmodemsg)
end

function EasyMode()
    vim.o.backspace = 'indent,eol,start'

    vim.keymap.set('n', '<Left>', '', { silent=true })
    vim.keymap.set('n', '<Right>', '', { silent=true })
    vim.keymap.set('n', '<Up>', '', { silent=true })
    vim.keymap.set('n', '<Down>', '', { silent=true })
    vim.keymap.set('n', '<PageUp>', '', { silent=true })
    vim.keymap.set('n', '<PageDown>', '', { silent=true })

    vim.keymap.set('i', '<Left>', '', { silent=true })
    vim.keymap.set('i', '<Right>', '', { silent=true })
    vim.keymap.set('i', '<Up>', '', { silent=true })
    vim.keymap.set('i', '<Down>', '', { silent=true })
    vim.keymap.set('i', '<PageUp>', '', { silent=true })
    vim.keymap.set('i', '<PageDown>', '', { silent=true })

    vim.keymap.set('v', '<Left>', '', { silent=true })
    vim.keymap.set('v', '<Right>', '', { silent=true })
    vim.keymap.set('v', '<Up>', '', { silent=true })
    vim.keymap.set('v', '<Down>', '', { silent=true })
    vim.keymap.set('v', '<PageUp>', '', { silent=true })
    vim.keymap.set('v', '<PageDown>', '', { silent=true })

    vim.keymap.set('v', 'h', '', { silent=true })
    vim.keymap.set('v', 'j', '', { silent=true })
    vim.keymap.set('v', 'k', '', { silent=true })
    vim.keymap.set('v', 'l', '', { silent=true })
    vim.keymap.set('v', '-', '', { silent=true })
    vim.keymap.set('v', '+', '', { silent=true })

    vim.keymap.set('n', 'h', '', { silent=true })
    vim.keymap.set('n', 'j', '', { silent=true })
    vim.keymap.set('n', 'k', '', { silent=true })
    vim.keymap.set('n', 'l', '', { silent=true })
    vim.keymap.set('n', '-', '', { silent=true })
    vim.keymap.set('n', '+', '', { silent=true })

    Hardmode_on = false
    print("You are weak...")
end

function ToggleHardMode()
    if Hardmode_on then
        EasyMode()
    else
        HardMode()
    end
end
