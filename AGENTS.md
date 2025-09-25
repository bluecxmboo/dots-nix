# AGENTS.md - Coding Guidelines for dots-nix

## Build/Test Commands
- **Build system**: `sudo nixos-rebuild switch --flake .#nixos-btw`
- **Test configuration**: `sudo nixos-rebuild test --flake .#nixos-btw`
- **Build Neovim package**: `nix build .#default`
- **No linting tools configured** - consider adding nixfmt, statix, deadnix

## Code Style Guidelines

### Nix Modules
- Use 2-space indentation
- Follow standard Nix module pattern: `{pkgs,lib,config,...}: { options = {...}; config = lib.mkIf config.<module>.enable {...}; }`
- Enable options with `lib.mkEnableOption "description"`
- Use `lib.mkIf` for conditional configuration
- Import modules in configuration.nix alphabetically

### Shell Scripts
- Use `#!/bin/bash` or `#!/usr/bin/env bash`
- Quote variables: `"$variable"`
- Use `[[ ]]` for conditionals instead of `[ ]`
- Add comments for complex logic
- Exit codes and error handling when appropriate

### Naming Conventions
- Module files: lowercase with .nix extension
- Options: `moduleName.enable` pattern
- Variables: descriptive lowercase with underscores
- Functions: camelCase for Nix functions

### Imports and Dependencies
- Group imports by type (builtins, lib functions, etc.)
- Use `with lib;` sparingly, prefer explicit `lib.` prefixes
- Follow existing dependency patterns in flake.nix

### Error Handling
- Use `lib.mkIf` for safe conditional application
- Validate inputs where critical
- Provide meaningful error messages in scripts

### File Organization
- Keep modules in `modules/` directory
- Home files in `home/` mirroring XDG structure
- Scripts in appropriate config directories