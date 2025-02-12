VIM: Hard Mode
==============

Hard Mode is a plugin which disables the arrow keys, the hjkl keys,
the page up/down keys, and a handful of other keys which allow one
to rely on character-wise navigation. The philosophy behind Hard Mode
is that you'll never master Neovim's advanced motion and search functionality
if you can fall back on the anti-pattern of fumbling around your code with
the arrow keys.

MAPPINGS
--------

To enable it:
:call HardMode()

To disable it:
:call EasyMode()

To toggle it:
:call ToggleHardMode()

You may also wish to add the following to lines to your lua configuration:
vim.keymap.set('n', '<leader>hm', function() 
    vim.cmd('call ToggleHardMode()') 
end)

With that line added, you can toggle Hard Mode by pressing <leader>hm 
while in |Normal-mode|.

Installation
------------

Add 'wksaurey/vim-hardmode' to Lazy or use your prefered plugin manager.

Once help tags have been generated, you can view the manual with
`:help hardmode`.

License
-------

GPLv2
