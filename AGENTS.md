# AGENTS.md - Coding Guidelines for dots-nix

## Build/Test Commands
- **Build system**: `sudo nixos-rebuild switch --flake .#nixos-btw`
- **Test configuration**: `sudo nixos-rebuild test --flake .#nixos-btw`
- **Run a single test**: Use `nix flake check` or specify a test target in `flake.nix`
- **Build Neovim package**: `nix build .#default`
- **Linting tools**: Consider adding `nixfmt`, `statix`, and `deadnix` for code quality.

## Code Style Guidelines

### Nix Modules
- Use 2-space indentation.
- Follow `{pkgs, lib, config, ...}: { options = {...}; config = lib.mkIf config.<module>.enable {...}; }` pattern.
- Enable options with `lib.mkEnableOption "description"`.
- Use `lib.mkIf` for conditional configuration.
- Import modules in `configuration.nix` alphabetically.

### Shell Scripts
- Use `#!/bin/bash` or `#!/usr/bin/env bash`.
- Quote variables: `"$variable"`.
- Use `[[ ]]` for conditionals instead of `[ ]`.
- Add comments for complex logic.
- Handle exit codes and errors appropriately.

### Naming Conventions
- Module files: lowercase with `.nix` extension.
- Options: `moduleName.enable` pattern.
- Variables: descriptive lowercase with underscores.
- Functions: camelCase for Nix functions.

### Imports and Dependencies
- Group imports by type (builtins, lib functions, etc.).
- Use `with lib;` sparingly, prefer explicit `lib.` prefixes.
- Follow existing dependency patterns in `flake.nix`.

### Error Handling
- Use `lib.mkIf` for safe conditional application.
- Validate inputs where critical.
- Provide meaningful error messages in scripts.

### File Organization
- Keep modules in `modules/` directory.
- Home files in `home/` mirroring XDG structure.
- Scripts in appropriate config directories.