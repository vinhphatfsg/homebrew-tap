# Homebrew Tap for Rulemorph

This is the official Homebrew tap for [Rulemorph](https://github.com/vinhphatfsg/rulemorph).

## Installation

```bash
brew tap vinhphatfsg/tap
brew install rulemorph
```

## What's included

This formula installs:
- `rulemorph` - CLI tool for YAML-based declarative data transformation
- `rulemorph-mcp` - MCP server for integration with AI assistants

## Usage

```bash
# Show help
rulemorph --help

# Validate rules
rulemorph validate --rules rules.yaml

# Transform data
rulemorph transform --rules rules.yaml --input data.json
```

## Update

```bash
brew update
brew upgrade rulemorph
```

## Uninstall

```bash
brew uninstall rulemorph
brew untap vinhphatfsg/tap
```

## Links

- [Project Repository](https://github.com/vinhphatfsg/rulemorph)
- [Documentation](https://github.com/vinhphatfsg/rulemorph#readme)
