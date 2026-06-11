# Plugin Audit

## Remove with Confidence

### `folke/tokyonight.nvim`

The entire plugin spec is inside a `--[[ ]]` block comment.
It is never loaded.

**Why keep:** You might want to switch colorschemes temporarily.
**Why remove:** It is literally disabled.
Dead code in the plugin list is confusing.
The theme can be re-added in seconds if needed.

---

### `embear/vim-localvimrc`

Provides per-directory `.lvimrc` files that load automatically when you open
a file in that directory.
Passive — works without any configuration once loaded.

**Why keep:** Useful for project-local settings without committing them.
**Why remove:** Neovim's built-in `exrc` (already enabled in `init.lua`)
covers the same use case with a safer model.
There is no `g:localvimrc_*` configuration anywhere, and no `.lvimrc` files
referenced.

---

### `kshenoy/vim-signature`

Displays mark positions in the sign column and provides `m`-prefix mappings
(`ma` to set mark a, `` m` `` to jump between marks, etc.) out of the box.
No configuration required.

**Why keep:** It requires nothing to be useful; marks show up in the gutter
and the mappings just work.
**Why remove:** No evidence you use it.
Neovim 0.10+ has native mark display via `vim.opt.signcolumn`.
If you have not noticed it being absent, you do not need it.

---

### `vim-scripts/camelcasemotion`

Provides `w`/`b`/`e` motions that respect camelCase and snake_case word
boundaries via `<Plug>CamelCaseMotion_*` mappings.
Unlike the other plugins here, it does require explicit configuration —
the `<Plug>` mappings must be wired up manually before it does anything.

**Why keep:** If you add keymaps, it works well.
**Why remove:** No `<Plug>CamelCaseMotion_*` keymaps are wired up anywhere,
so the plugin does nothing at all.

---

### `guns/xterm-color-table.vim`

Provides a `:XtermColorTable` command for browsing the 256-color palette.
Works immediately with no configuration.

**Why keep:** Handy occasionally when tuning terminal colors.
**Why remove:** You have `mgaffney/selenized.nvim` set up with explicit hex
values and do not appear to browse the xterm palette.
This is a diagnostic utility, not a day-to-day tool.
Install it on demand if you ever need it.

---

### `moll/vim-bbye`

Provides `:Bdelete` and `:Bwipeout` for closing buffers without closing the
window.
Works immediately with no configuration.
Listed with a comment "optional dependency" but nothing in the config invokes
it and no other plugin lists it as a dependency.

**Why keep:** If you add a `:Bdelete` keymap, it is genuinely useful.
**Why remove:** No `:Bdelete` or `:Bd` calls exist anywhere in the config.
The "optional dependency" comment appears to be a leftover note.

---

### `dlyongemallo/diffview-plus.nvim`

Enhances Neovim's built-in diff view.
Provides `:DiffviewOpen` and related commands that work without configuration.

**Why keep:** You use diffs heavily via fugitive.
**Why remove:** No `:DiffviewOpen` usage anywhere.
Fugitive's `:Gdiffsplit` already covers interactive diffing.

---

### `idanarye/vim-merginal`

Provides a branch management UI on top of fugitive via `:MerginalToggle`.
Works without configuration.

**Why keep:** Branch switching without leaving Neovim is convenient.
**Why remove:** No `:MerginalToggle` usage or keymaps wired up anywhere.
Fugitive's `:Git branch` and telescope cover the same ground.

---

### `aymericbeaumet/vim-symlink`

Automatically resolves symlinks when opening files, so the real file path
appears in the buffer name.
Passive — works without any configuration once loaded.

**Why keep:** It does its job silently with no setup required.
**Why remove:** You would only notice it is missing if you regularly edit
files through symlinks and care about the resolved path showing up correctly.

---

### `tpope/vim-scriptease`

Provides Vimscript development utilities: `:Messages`, `:Vedit`,
`:Breakpoint`, and `zS` for syntax stack inspection.
All work immediately with no configuration.

**Why keep:** `zS` is irreplaceable when hunting down a highlight group.
Useful when debugging Vimscript.
**Why remove:** No evidence of active use in the config.
`zS` is the most commonly reached-for feature; if you use it, add the plugin
back.

---

### `chrisbra/csv.vim`

Activates automatically on `filetype=csv` and provides commands and mappings
without any configuration: `:ArrangeColumn`, `:CSVQuery`, column-aware `w`/`b`
motions, and more.

**Why keep:** Treesitter's CSV parser only handles syntax highlighting.
`csv.vim` adds editing capabilities that treesitter does not provide, and it
activates without any setup.
**Why remove:** No evidence you open CSV files in Neovim or use any of its
features.

---

## Worth Reviewing

### `tpope/vim-sensible`

Auto-applies a set of "sensible" Vim defaults.
Passive — loads automatically and sets options.

**Why keep:** Zero-config, harmless to have loaded.
**Why remove:** Neovim already includes the vast majority of vim-sensible's
settings as built-in defaults.
Your `init.lua` also sets most of the same options explicitly.
The plugin almost certainly does nothing in this config.
The main risk of removing it is discovering one obscure setting it was
providing — easily fixed.

---

### `ellisonleao/gruvbox.nvim`

Has an active `require('gruvbox').setup()` call that overrides `DiffText` and
`DiffTextAdd` highlight groups.

**Why keep:** The diff highlight overrides are intentional — they tune how
changed lines look in diffs regardless of the active colorscheme.
**Why remove:** You are not using gruvbox as your colorscheme (selenized is
active).
The diff highlight overrides could be moved into a small `vim.api.nvim_set_hl()`
call, removing the dependency on a full theme plugin just for two highlight
tweaks.

---

## Passive / Filetype-Only (Keep if You Use Those Filetypes)

These plugins load only when a matching filetype is detected.
They are harmless and require no configuration, but are only worth keeping if
you actually edit those file types.

| Plugin                              | Filetype       | Notes                                            |
| ---                                 | ---            | ---                                              |
| `aklt/plantuml-syntax`              | `.puml`, `.pu` | Has a local `after/ftplugin/plantuml.vim` too    |
| `zimbatm/haproxy.vim`               | `haproxy.cfg`  | Syntax only                                      |
| `tomswartz07/vim-pg-explain-syntax` | `pgexplain`    | Useful if you paste EXPLAIN output into a buffer |
| `tmux-plugins/vim-tmux`             | `.tmux.conf`   | Syntax + ftplugin for tmux config files          |
