# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview
This is a Neovim configuration based on NvChad v2.5, which is loaded as a plugin. The configuration uses Lua and follows NvChad's modular structure.

## Key Architecture
- **Plugin Management**: Uses lazy.nvim (auto-bootstrapped in init.lua)
- **Base Framework**: NvChad loaded as a plugin providing defaults
- **Configuration Flow**: init.lua → lazy.nvim bootstrap → load plugins → apply theme → load configs

## Critical File Locations
- **Main entry**: `init.lua`
- **Plugin declarations**: `lua/plugins/init.lua`, `lua/custom/plugins.lua`
- **Key mappings**: `lua/mappings.lua`
- **LSP config**: `lua/configs/lspconfig.lua`
- **Formatter config**: `lua/configs/conform.lua`
- **Theme/UI settings**: `lua/chadrc.lua`

## Development Commands
Since this is a Neovim configuration, there are no build/test commands. However, when modifying:
- **After plugin changes**: Restart Neovim and run `:Lazy sync`
- **Check plugin status**: `:Lazy`
- **Format Lua files**: Ensure stylua is installed, then use conform.nvim's format command
- **Verify LSP**: `:LspInfo` to check language server status

## Important Context
- NvChad modules are imported as `require "nvchad.module"` not local files
- The configuration is minimal by design, leveraging NvChad's defaults
- Custom plugins should go in `lua/custom/plugins.lua` to maintain organization
- When adding LSP servers, they must be installed separately (not managed by this config)