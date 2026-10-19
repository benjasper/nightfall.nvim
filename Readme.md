<div align="center">

# nightfall.nvim

A clean, modern, dark neovim theme.

</div>

While not a 1:1 port of [coeiico's nightfall theme for Jetbrains IDEs](https://github.com/coeiico/jetbrains-nightfall-theme), this theme is heavily inspired by it.
This is also the reason for keeping the name (there is already another theme with the same name).

<table>
  <tr>
    <td width="50%" align="center">
      <img alt="nightfall theme screenshot" src="assets/nightfall.png" />
      <sub>nightfall</sub>
    </td>
    <td width="50%" align="center">
      <img alt="nightfall-darker theme screenshot" src="assets/nightfall-darker.png" />
      <sub>nightfall-darker</sub>
    </td>
  </tr>
</table>

## ✨ Features
- 🌙 Dark
- 📖 Easy to read
- 🌳 Treesitter support
- 🧩 LSP support
- 👀 Focus on visual consistency

## Integrations
See [here](lua/nightfall/highlights/integrations/) for a list of integrations.

## 📦 Installation
### Using lazy.nvim
```lua
{
	"benjasper/nightfall.nvim",
	priority = 1000,
	config = function()
		require("nightfall").setup()

		vim.cmd("colorscheme nightfall")
	end
}
```

## ⚙️ Configuration
Pass options to `setup()` before loading the colorscheme. Options are merged with the defaults, so you only need to specify what you want to change.

```lua
require("nightfall").setup({
	palette = "darker", -- "default" or "darker"
	transparent = true, -- Use your terminal's background
})

vim.cmd("colorscheme nightfall")
```

When using lazy.nvim, put these options in the `setup()` call in the installation example above.

`transparent` defaults to `false`. When enabled, individual highlights for editor windows, floats, gutters, menus, diagnostics, and supported plugin backgrounds use `NONE`. Selection, diff, and other accent backgrounds are preserved. Configure transparency or opacity in your terminal separately.

### Plugin integrations
By default, nightfall automatically enables integrations for plugins configured in lazy.nvim. Without lazy.nvim, all supported integrations are enabled.

These are the default options:

```lua
require("nightfall").setup({
	palette = "default",
	transparent = false,
	plugins = {
		all = package.loaded.lazy == nil,
		auto = true, -- Detect plugins configured in lazy.nvim
	},
})
```

You can explicitly enable or disable individual integrations. To enable only selected integrations, disable both `all` and `auto`:

```lua
require("nightfall").setup({
	palette = "darker",
	plugins = {
		all = false,
		auto = false,
		telescope = true,
		["neo-tree"] = true,
	},
})
```

Integration keys can be the [integration filename](lua/nightfall/highlights/integrations/) without `.lua` (for example, `"neo-tree"`) or the plugin name from the [plugin mapping](lua/nightfall/highlights/init.lua) (for example, `"neo-tree.nvim"`). Explicit settings override automatic detection and `all`; use `false` to disable an integration. Neo-tree support includes a highlight for untracked Git files.

## 👷‍♂️ Development
If you want to contribute to this project, you can do so by forking the repository and creating a pull request.
You can easily build an integration for a plugin by adding a new file to the `lua/nightfall/highlights/integrations` directory.
As you can see in other integrations, they always return a set of highlight groups.

After you have created your integration, you can add it to the `lua/nightfall/highlights/init.lua` file:
At the top you'll find a table, that maps the exact plugin name to the filename. Simply enter your newly created file.

## 📝 License
[MIT](LICENSE)
