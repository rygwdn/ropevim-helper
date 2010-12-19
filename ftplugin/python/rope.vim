if !has("python")
    finish
endif

python << EOF

import vim
try:
    import os.path as pth
    import ropevim
    vimfile = pth.join(pth.dirname(ropevim.__file__), "ropevim.vim")
    vim.command("source %s" % vimfile)
except ImportError:
    vim.command('echomsg "Failed to load ropevim"')
    vim.command('echomsg "Try installing with `pip install ropevim`'
        + 'or `easy_install ropevim`"')
EOF
