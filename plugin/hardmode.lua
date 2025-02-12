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

    vim.keymap.set('n', '<Left>', '<Left>', { silent=true })
    vim.keymap.set('n', '<Right>', '<Right>', { silent=true })
    vim.keymap.set('n', '<Up>', '<Up>', { silent=true })
    vim.keymap.set('n', '<Down>', '<Down>', { silent=true })
    vim.keymap.set('n', '<PageUp>', '<PageUp>', { silent=true })
    vim.keymap.set('n', '<PageDown>', '<PageDown>', { silent=true })

    vim.keymap.set('i', '<Left>', '<Left>', { silent=true })
    vim.keymap.set('i', '<Right>', '<Right>', { silent=true })
    vim.keymap.set('i', '<Up>', '<Up>', { silent=true })
    vim.keymap.set('i', '<Down>', '<Down>', { silent=true })
    vim.keymap.set('i', '<PageUp>', '<PageUp>', { silent=true })
    vim.keymap.set('i', '<PageDown>', '<PageDown>', { silent=true })

    vim.keymap.set('v', '<Left>', '<Left>', { silent=true })
    vim.keymap.set('v', '<Right>', '<Right>', { silent=true })
    vim.keymap.set('v', '<Up>', '<Up>', { silent=true })
    vim.keymap.set('v', '<Down>', '<Down>', { silent=true })
    vim.keymap.set('v', '<PageUp>', '<PageUp>', { silent=true })
    vim.keymap.set('v', '<PageDown>', '<PageDown>', { silent=true })

    vim.keymap.set('v', 'h', 'h', { silent=true })
    vim.keymap.set('v', 'j', 'j', { silent=true })
    vim.keymap.set('v', 'k', 'k', { silent=true })
    vim.keymap.set('v', 'l', 'l', { silent=true })
    vim.keymap.set('v', '-', '-', { silent=true })
    vim.keymap.set('v', '+', '+', { silent=true })

    vim.keymap.set('n', 'h', 'h', { silent=true })
    vim.keymap.set('n', 'j', 'j', { silent=true })
    vim.keymap.set('n', 'k', 'k', { silent=true })
    vim.keymap.set('n', 'l', 'l', { silent=true })
    vim.keymap.set('n', '-', '-', { silent=true })
    vim.keymap.set('n', '+', '+', { silent=true })

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
