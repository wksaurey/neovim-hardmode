--[[ 
hardmode.lua - Neovim: HARD MODE!!!
Author:       Kolter Saruey <wksaurey@gmail.com>
Contributers: dusans, Matt Parrott <parrott.matt@gmail.com>
Version:      1.0
]]

Hardmodemsg = "Neovim Hard-Mode |':call EasyMode()' to exit|"
Hardmode_on = false

local function conditionalMove(key)
    return function()
        local count = vim.v.count
        if count > 1 then
            local command = count .. key
            print(command)
            vim.cmd(command)
        else
            print(Hardmodemsg)
        end
    end
end

function HardMode()
    vim.o.backspace = ''

    vim.keymap.set('n', '<Left>', function() print(Hardmodemsg) end, { noremap=true })
    vim.keymap.set('n', '<Right>', function() print(Hardmodemsg) end, { noremap=true })
    vim.keymap.set('n', '<Up>', function() print(Hardmodemsg) end, { noremap=true })
    vim.keymap.set('n', '<Down>', function() print(Hardmodemsg) end, { noremap=true })
    vim.keymap.set('n', '<PageUp>', function() print(Hardmodemsg) end, { noremap=true })
    vim.keymap.set('n', '<PageDown>', function() print(Hardmodemsg) end, { noremap=true })

    vim.keymap.set('i', '<Left>', function() print(Hardmodemsg) end, { noremap=true })
    vim.keymap.set('i', '<Right>', function() print(Hardmodemsg) end, { noremap=true })
    vim.keymap.set('i', '<Up>', function() print(Hardmodemsg) end, { noremap=true })
    vim.keymap.set('i', '<Down>', function() print(Hardmodemsg) end, { noremap=true })
    vim.keymap.set('i', '<PageUp>', function() print(Hardmodemsg) end, { noremap=true })
    vim.keymap.set('i', '<PageDown>', function() print(Hardmodemsg) end, { noremap=true })

    vim.keymap.set('v', '<Left>', function() print(Hardmodemsg) end, { noremap=true })
    vim.keymap.set('v', '<Right>', function() print(Hardmodemsg) end, { noremap=true })
    vim.keymap.set('v', '<Up>', function() print(Hardmodemsg) end, { noremap=true })
    vim.keymap.set('v', '<Down>', function() print(Hardmodemsg) end, { noremap=true })
    vim.keymap.set('v', '<PageUp>', function() print(Hardmodemsg) end, { noremap=true })
    vim.keymap.set('v', '<PageDown>', function() print(Hardmodemsg) end, { noremap=true })

    vim.keymap.set('v', 'h', function() print(Hardmodemsg) end, { noremap=true })
    vim.keymap.set('v', 'j', conditionalMove('j'), { noremap=true })
    vim.keymap.set('v', 'k', conditionalMove('k'), { noremap=true })
    vim.keymap.set('v', 'l', function() print(Hardmodemsg) end, { noremap=true })
    vim.keymap.set('v', '-', function() print(Hardmodemsg) end, { noremap=true })
    vim.keymap.set('v', '+', function() print(Hardmodemsg) end, { noremap=true })

    vim.keymap.set('n', 'h', function() print(Hardmodemsg) end, { noremap=true })
    vim.keymap.set('n', 'j', conditionalMove('j'), { noremap=true })
    vim.keymap.set('n', 'k', conditionalMove('k'), { noremap=true })
    vim.keymap.set('n', 'l', function() print(Hardmodemsg) end, { noremap=true })
    vim.keymap.set('n', '-', function() print(Hardmodemsg) end, { noremap=true })
    vim.keymap.set('n', '+', function() print(Hardmodemsg) end, { noremap=true })

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
