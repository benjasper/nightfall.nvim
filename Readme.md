<div align="center">

# nightfall.nvim

A clean, modern, dark neovim theme.

</div>

While not a 1:1 port of [coeiico's nightfall theme for Jetbrains IDEs](https://github.com/coeiico/jetbrains-nightfall-theme), this theme is heavily inspired by it. 
This is also the reason for keeping the name (there is already another theme with the same name).

<img width="1508" alt="Screenshot" src="assets/preview.png" />

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

### ⚙️ Configuration
Right now, there isn't much to configure. This may change in the future.
When using lazy the plugin will automatically load the integrations for the plugins you have enabled.

## 👷‍♂️ Development
If you want to contribute to this project, you can do so by forking the repository and creating a pull request.
You can easily build an integration for a plugin by adding a new file to the `lua/nightfall/highlights/integrations` directory.
As you can see in other integrations, they always return a set of highlight groups.

After you have created your integration, you can add it to the `lua/nightfall/highlights/init.lua` file:
At the top you'll find a table, that maps the exact plugin name to the filename. Simply enter your newly created file.

## 📝 License
[MIT](LICENSE)

