<div align="center">

# nightfall.nvim

A clean, modern, dark neovim theme.

</div>

While not a 1:1 port of [coeiico's nightfall theme for Jetbrains IDEs](https://github.com/coeiico/jetbrains-nightfall-theme), this theme is heavily inspired by it. 
This is also the reason for keeping the name (there is already another theme with the same name).

<img width="1508" alt="Screenshot 2025-05-25 at 12 55 21" src="https://github.com/user-attachments/assets/0ec78811-7271-490f-9f49-5fce0d5f5f37" />

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
		require("nightfall").setup({
			--- override_config
		})

        vim.cmd("colorscheme nightfall")
	end
}
```

### ⚙️ Configuration
Right now, there is not a lot of configuration.
When using lazy the plugin will automatically load the integrations for the plugins you have enabled.

## 👷‍♂️ Development
If you want to contribute to this project, you can do so by forking the repository and creating a pull request.
You can easily build an integration for a plugin by adding a new file to the `lua/nightfall/highlights/integrations` directory.
As you can see in other integrations, they always return a set of highlight groups.

After you have created your integration, you can add it to the `lua/nightfall/highlights/init.lua` file.

## 📝 License
[MIT](LICENSE)


